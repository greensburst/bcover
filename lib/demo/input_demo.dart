import 'package:flutter/material.dart';
import '../model/av.dart';

class Input extends StatefulWidget {
  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32.0),
      child: TextField(
        onChanged: (v){
          av = v;
        },
        decoration: InputDecoration(
          hintText: '输入b站视频av号',
          filled: true,
        ),
      ),
    );
  }
}