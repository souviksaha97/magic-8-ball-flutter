import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white38,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  @override
  int ballState = 1;

  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  ballState = Random().nextInt(4) + 1;
                });
              },
              child: Image.asset('images/ball$ballState.png'),
            ),
          ),
        ),
      ],
    );
  }
}
