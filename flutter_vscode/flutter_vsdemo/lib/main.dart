import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: [
          new Expanded(
              child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text('湖人 - 助理 - 操场',
                      style: new TextStyle(fontWeight: FontWeight.bold)),
                ),
                new Text('副标题-你在说什么',
                    style: new TextStyle(color: Colors.grey[500]))
              ])),
          new Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          new Text('41')
        ],
      ),
    );

    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Icon(icon, color: color),
          new Container(
              margin: const EdgeInsets.only(top: 8.0),
              child: new Text(
                label,
                style: new TextStyle(
                    fontSize: 12.0, fontWeight: FontWeight.w400, color: color),
              ))
        ],
      );
    }

    Widget buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.near_me, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        '''Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run. ''',
        softWrap: true,
      ),
    );

    return new MaterialApp(
      title: 'Flutter 布局',
      theme: new ThemeData(primaryColor: Colors.blue),
      home: new HomePage(titleSection, buttonSection, textSection),
    );
  }
}

class HomePage extends StatefulWidget {
  Widget titleSection;
  Widget buttonSection;
  Widget textSection;

  HomePage(this.titleSection, this.buttonSection, this.textSection);

  @override
  State<StatefulWidget> createState() =>
      new HomeState(titleSection, buttonSection, textSection);
}

class HomeState extends State<HomePage> {
  Widget titleSection;
  Widget buttonSection;
  Widget textSection;

  HomeState(this.titleSection, this.buttonSection, this.textSection);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: [
          new Image.asset('images/lake.jpg', height: 240.0, fit: BoxFit.cover),
          titleSection,
          buttonSection,
          textSection
        ],
      ),
    );
  }
}
