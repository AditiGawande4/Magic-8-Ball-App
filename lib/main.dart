import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('Ask me anything'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: BallFace(),
      ),
    ),
  );
}

class BallFace extends StatefulWidget {
  @override
  State<BallFace> createState() => _BallFaceState();
}

class _BallFaceState extends State<BallFace> {
  int number = 1;

  void changeBallFace() {
    setState(() {
      number = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                changeBallFace();
              },
              child: Image.asset('images/ball$number.png'),
            ),
          )
        ],
      ),
    );
  }
}
