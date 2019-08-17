import 'package:flutter/material.dart';
import './demo/input_demo.dart';
import './demo/finger_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(244, 90, 141, 0.7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Image.network('http://i2.hdslb.com/bfs/archive/ab7676f5beae2e3930ac35b530e8264f34f02b66.jpg'),
          Input(),
          SizedBox(
            height: 32.0,
          ),
          Finger(),
        ],
      ),
    );
  }
}