import 'package:flutter/material.dart';
import 'package:udemy_flutter_course/home_page.dart';
import 'package:udemy_flutter_course/section/10/quizzler.dart';
import 'package:udemy_flutter_course/section/11/destini.dart';
import 'package:udemy_flutter_course/section/12/bmi_calculator.dart';
import 'package:udemy_flutter_course/section/13/clima_home_page.dart';
import 'package:udemy_flutter_course/section/6/user_card.dart';
import 'package:udemy_flutter_course/section/7/dice_page.dart';
import 'package:udemy_flutter_course/section/8/magic_ball.dart';
import 'package:udemy_flutter_course/section/9/xylophone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        //primaryColor: const Color(0xFF0A0E21),// not working
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.routName: (context) => HomePage.initRoute(context),
        UserCard.routName: (context) => const UserCard(),
        DicePage.routName: (context) => const DicePage(),
        MagicBallPage.routName: (context) => const MagicBallPage(),
        Xylophone.routName: (context) => const Xylophone(),
        QuizzlerPage.routName: (context) => const QuizzlerPage(),
        Destini.routName: (context) => const Destini(),
        BMICalculator.routName: (context) => const BMICalculator(),
        ClimaHomePage.routName: (context) => const ClimaHomePage(),
      },
      initialRoute: HomePage.routName,
    );
  }
}
