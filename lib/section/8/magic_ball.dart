import 'dart:math';

import 'package:flutter/material.dart';

class MagicBall extends StatefulWidget {
  static const String routName = '/magicBall';
  const MagicBall({Key? key}) : super(key: key);

  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue.shade800,
      title: const Text('Ask My Anything'),
    ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Image.asset('images/ball$ballNumber.png'),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: ClipOval(
                  child: Material(
                    color: Colors.transparent, // button color
                    child: InkWell(
                      highlightColor:Colors.transparent,
                      splashColor: Colors.transparent, // inkwell color
                      child: const SizedBox(width: 340, height: 340, ),
                      onTap: () {
                        setState(() {
                          ballNumber = Random().nextInt(5) + 1;
                        });
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class MagicBallPage extends StatelessWidget {
  static const String routName = '/magicBallPage';
  const MagicBallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue.shade800,
        title: const Text('Ask My Anything'),
      ),
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  var ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}

