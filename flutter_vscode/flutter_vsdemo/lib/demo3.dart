import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final wordPair = new WordPair.random();

    return new MaterialApp(
        title: "MaterialApp-title MaterialApp",
        home: new Scaffold(
          appBar: new AppBar(
              title: new Text("MaterialApp-home Scaffold appBar-title")),
          body: new Center(child: new RandomWords()),
        ));
  }
}

class RandomWords extends StatefulWidget {
  createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(Object context) {
    final wordPair = new WordPair.random();
    return new Text(wordPair.asPascalCase);
  }
}
