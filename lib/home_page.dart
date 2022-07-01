import 'package:flutter/material.dart';
import 'package:udemy_flutter_course/section/10/quizzler.dart';
import 'package:udemy_flutter_course/section/11/destini.dart';
import 'package:udemy_flutter_course/section/12/bmi_calculator.dart';
import 'package:udemy_flutter_course/section/13/clima_home_page.dart';
import 'package:udemy_flutter_course/section/6/user_card.dart';
import 'package:udemy_flutter_course/section/7/dice_page.dart';
import 'package:udemy_flutter_course/section/8/magic_ball.dart';
import 'package:udemy_flutter_course/section/9/xylophone.dart';

class HomePage {
  static const String routName = '/homePage';

  static initRoute(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Udemy Flutter Course',
          style: TextStyle(
            fontSize: 32,
            color: Colors.deepPurple.shade700,
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 4,
        children: [
          TextButton(
            child: const Text(
            'User Card',
            style: TextStyle(color: Colors.teal),
          ),
            onPressed: () {
              Navigator.pushNamed(
                context,
                UserCard.routName,
              );
            },
          ),
          TextButton(
            child: const Text(
              'Dice',
              style: TextStyle(color: Colors.red),
            ),
            onPressed: () {
              Navigator.pushNamed(
                context,
                DicePage.routName,
              );
            },
          ),
          TextButton(
            child:  Text(
              'Magic Ball',
              style: TextStyle(color: Colors.blue.shade800),
            ),
            onPressed: () {
              Navigator.pushNamed(
                context,
                MagicBallPage.routName,
              );
            },
          ),
          TextButton(
            child: const Text(
              'Xylophone',
              style: TextStyle(color: Colors.deepPurple),
            ),
            onPressed: () {
              Navigator.pushNamed(
                context,
                Xylophone.routName,
              );
            },
          ),
          TextButton(
            child: const Text(
              'Quizzler',
              style: TextStyle(color: Colors.green),
            ),
            onPressed: () {
              Navigator.pushNamed(
                context,
                QuizzlerPage.routName,
              );
            },
          ),
          TextButton(
            child: const Text(
              'Destini',
              style: TextStyle(color: Colors.orange),
            ),
            onPressed: () {
              Navigator.pushNamed(
                context,
                Destini.routName,
              );
            },
          ),
          TextButton(
            child: const Text(
              'BMI Calculator',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.pink),
            ),
            onPressed: () {
              Navigator.pushNamed(
                context,
                BMICalculator.routName,
              );
            },
          ),
          TextButton(
            child: const Text(
              'Clima',
              style: TextStyle(color: Colors.purpleAccent),
            ),
            onPressed: () {
              Navigator.pushNamed(
                context,
                ClimaHomePage.routName,
              );
            },
          ),
        ],
      ),
    );
  }
}
