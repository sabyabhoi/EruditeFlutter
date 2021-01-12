import 'package:flutter/material.dart';

class WordData {
  String word, partOfSpeech, definition, usage;

  WordData({this.word, this.partOfSpeech, this.definition, this.usage});
}

class Word extends StatefulWidget {
  @override
  _WordState createState() => _WordState();
}

class _WordState extends State<Word> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "Elucidate",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              "transitive verb",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Text(
            "Make (something) clear; explain.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            "\"work such as theirs will help to elucidate this matter\"",
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
