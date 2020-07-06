import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue.shade400,
          appBar: AppBar(
            backgroundColor: Colors.blue.shade800,
            title: Center(
              child: Text('Ask Me Anything'),
            ),
          ),
          body: askMeAnything(),
        ),
      ),
    );

class askMeAnything extends StatefulWidget {
  @override
  _askMeAnythingState createState() => _askMeAnythingState();
}

class _askMeAnythingState extends State<askMeAnything> {
  int randNum = 1;

  void imgState() {
    setState(() {
      randNum = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () {
                  imgState();
                },
                child: Image.asset('images/ball$randNum.png')),
          ),
        ],
      ),
    );
  }
}
