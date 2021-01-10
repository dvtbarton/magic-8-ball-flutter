import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[800],
            title: Center(
              child: Text('Ask 🎱 Anything!'),
            ),
          ),
          body: Magic8Ball(),
        ),
      ),
    );

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          randomize8Ball();
          print('Magic 🎱 pressed!');
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }

  void randomize8Ball() {
    return setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }
}
