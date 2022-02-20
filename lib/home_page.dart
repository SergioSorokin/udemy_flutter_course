import 'package:flutter/material.dart';
import 'package:udemy_flutter_course/section/6/user_card.dart';
import 'package:udemy_flutter_course/section/7/dice_page.dart';
import 'package:udemy_flutter_course/section/8/magic_ball.dart';

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
            child: const Text('4'),onPressed: () {},
          ),
          TextButton(
            child: const Text('5'),onPressed: () {},
          ),
        ],
      ),
    );
  }
}
