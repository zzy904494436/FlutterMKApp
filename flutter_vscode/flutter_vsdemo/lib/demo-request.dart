// ignore: unused_import
import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:io';
// ignore: unused_import
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _ipAddress = 'Unknown';

  _getIPAddress() async {
    var testurl = 'http://cnt.kedoulangdu.com/v2/homePage';
    //1 创建 HttpClient
    var httpClient = new HttpClient();

    String result;
    try {
      var request = await httpClient.postUrl(Uri.parse(testurl));
      request.headers.add('User-Id', '');
      request.headers.add('Session-Id', '');
      request.headers.add('App-Id', 'com.mycoreedu.keketingapp.android');
      request.headers.add('App-Version', '4.5.5');

      var response = await request.close();
      if (response.statusCode == HttpStatus.ok) {
        var json = await response.transform(utf8.decoder).join();
        var data = jsonDecode(json);
        result = data['data']['banner'].toString();
      } else {
        result =
            'error getting IP address:\nHttp status ${response.statusCode}';
      }
    } catch (exception) {
      result = 'Failed getting IP address';
    }

    if (!mounted) return;

    setState(() {
      _ipAddress = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    var spacer = new SizedBox(
      height: 32.0,
    );
    return new Scaffold(
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text('Your current IP is :'),
          new Text('$_ipAddress.'),
          spacer,
          new RaisedButton(
            onPressed: _getIPAddress,
            child: new Text('Get IP Address!'),
          )
        ],
      ),
    );
  }
}
