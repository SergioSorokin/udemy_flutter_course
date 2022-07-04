import 'package:flutter/material.dart';
import 'package:udemy_flutter_course/components/custom_navigation_button.dart';
import 'package:udemy_flutter_course/section/10/quizzler.dart';
import 'package:udemy_flutter_course/section/11/destini.dart';
import 'package:udemy_flutter_course/section/12/bmi_calculator.dart';
import 'package:udemy_flutter_course/section/13/clima_home_page.dart';
import 'package:udemy_flutter_course/section/14/bitcoin_ticker_home_page.dart';
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
        children: const[
          CustomNavigationButton(
            routName: UserCard.routName,
            assetImage: 'images/id-card.jpg',
          ),
          CustomNavigationButton(
            routName: DicePage.routName,
            assetImage: 'images/dice.png',
          ),
          CustomNavigationButton(
            routName: MagicBallPage.routName,
            assetImage: 'images/magic_ball.png',
          ),
          CustomNavigationButton(
            routName: Xylophone.routName,
            assetImage: 'images/xylophone.png',
          ),
          CustomNavigationButton(
            routName: QuizzlerPage.routName,
            assetImage: 'images/quizzler.png',
          ),
          CustomNavigationButton(
            routName: Destini.routName,
            assetImage: 'images/destini.png',
          ),
          CustomNavigationButton(
            routName: BMICalculator.routName,
            assetImage: 'images/b_m_i_calculator.png',
          ),
          CustomNavigationButton(
            routName: ClimaHomePage.routName,
            assetImage: 'images/clima.png',
          ),
          CustomNavigationButton(
            routName: BitcoinTickerHomePage.routName,
            assetImage: 'images/bitcoin.png',
          ),
        ],
      ),
    );
  }
}
