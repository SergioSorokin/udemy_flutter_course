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
        ],
      ),
    );
  }
}

class CustomNavigationButton extends StatelessWidget {
  const CustomNavigationButton({
    required this.routName,
    required this.assetImage,
    Key? key,
  }) : super(key: key);
  final String assetImage;
  final String routName;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Image(
        image: AssetImage(assetImage),
      ),
      onPressed: () {
        Navigator.pushNamed(
          context,
          routName,
        );
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          Colors.transparent,
        ),
        shadowColor: MaterialStateProperty.all<Color>(
          Colors.transparent,
        ),
        overlayColor: MaterialStateProperty.all<Color>(
          Colors.transparent,
        ),
        splashFactory: NoSplash.splashFactory,
      ),
    );
  }
}
