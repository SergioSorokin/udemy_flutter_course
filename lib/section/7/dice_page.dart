import 'dart:math';
import 'package:flutter/material.dart';

class DicePage extends StatelessWidget {
  static const String routName = '/dice';
  const DicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor:Colors.red,
        centerTitle: true,
        title: const Text(
          'Dice',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: const DiceBodyPage(),
    );
  }
}
class DiceBodyPage extends StatefulWidget {
  const DiceBodyPage({Key? key}) : super(key: key);

  @override
  _DiceBodyPageState createState() => _DiceBodyPageState();
}

class _DiceBodyPageState extends State<DiceBodyPage> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;

  void changeDiceFace(){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                child: Image.asset(
                  'images/dice$leftDiceNumber.png',
                ),
                onTap: () {
                  changeDiceFace();
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                child: Image.asset(
                  'images/dice$rightDiceNumber.png',
                ),
                onTap: () {
                  changeDiceFace();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
