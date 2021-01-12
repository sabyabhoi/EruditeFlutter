import 'package:flutter/material.dart';

import 'Word.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text("Click"),
        onPressed: () {},
      ),
      appBar: AppBar(
        title: Text(
          "Erudite",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 255, 238, 1),
        elevation: 0,
      ),
      drawer: Drawer(
        child: Container(
          color: Color.fromRGBO(255, 255, 238, 1),
          child: ListView(
            children: <Widget>[
              ListTile(title: Text("Today's word")),
              ListTile(title: Text("Saved words"))
            ],
          ),
        ),
      ),
      body: Center(
        child: Word(),
      ),
      backgroundColor: Color.fromRGBO(255, 255, 238, 1),
    );
  }
}

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
