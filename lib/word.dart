import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class WordData {
  String word, partOfSpeech, definition, usage;

  WordData({this.word, this.partOfSpeech, this.definition, this.usage});

  static Future<WordData> getWordData() async {
    final String word = "hello";
    Response response =
        await get('https://api.dictionaryapi.dev/api/v2/entries/en/$word');
    Map data = jsonDecode(response.body)[0];

    final String partOfSpeech = data['meanings'][0]['partOfSpeech'];
    final String definition =
        data['meanings'][0]['definitions'][0]['definition'];
    final String usage = data['meanings'][0]['definitions'][0]['example'];

    final wordData = WordData(
        word: word,
        partOfSpeech: partOfSpeech,
        definition: definition,
        usage: usage);
    return wordData;
  }
}

class Word extends StatefulWidget {
  @override
  _WordState createState() => _WordState();
}

class _WordState extends State<Word> {
  WordData word;

  @override
  void initState() {
    WordData.getWordData().then((value) {
      setState(() {
        word = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            this.word.word,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              this.word.partOfSpeech,
              style: TextStyle(fontSize: 18),
            ),
          ),
          Text(
            this.word.definition,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            this.word.usage,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
          ),
          SizedBox(
            height: 80.0,
          )
        ],
      ),
    );
  }
}
