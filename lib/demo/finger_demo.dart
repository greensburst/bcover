import 'package:flutter/material.dart';
import 'dart:async';
import '../model/av.dart';
import '../http/img.dart';
import 'dart:convert';
import 'dart:io';

class Finger extends StatefulWidget {
  @override
  _FingerState createState() => _FingerState();
}

class _FingerState extends State<Finger> {
  Color _fon = Colors.white;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(24.0),
        child: Icon(
          Icons.fingerprint,
          size: 64.0,
          color: _fon,
        ),
      ),
      onTapDown: (e) {
        setState(() {
          _fon = Colors.red;
        });
      },
      onTap: () {
        setState(() {
          _fon = Colors.white;
        });
        debugPrint(av);
        get();
      },
      onTapCancel: () {
        setState(() {
          _fon = Colors.white;
        });
      },
      splashColor: Colors.grey.withOpacity(0.3),
      highlightColor: Colors.grey.withOpacity(0.1),
      customBorder: CircleBorder(),
    );
  }
}
