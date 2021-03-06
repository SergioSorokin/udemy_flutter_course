import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_flutter_course/home_page.dart';
import 'package:udemy_flutter_course/section/10/quizzler.dart';
import 'package:udemy_flutter_course/section/11/destini.dart';
import 'package:udemy_flutter_course/section/12/bmi_calculator.dart';
import 'package:udemy_flutter_course/section/13/clima_home_page.dart';
import 'package:udemy_flutter_course/section/14/bitcoin_ticker_home_page.dart';
import 'package:udemy_flutter_course/section/15/screens/flash_chat_login_screen.dart';
import 'package:udemy_flutter_course/section/15/screens/flash_chat_registration_screen.dart';
import 'package:udemy_flutter_course/section/15/screens/flash_chat_screen.dart';
import 'package:udemy_flutter_course/section/15/screens/flash_chat_welcome_screen.dart';
import 'package:udemy_flutter_course/section/16/models/task_data.dart';
import 'package:udemy_flutter_course/section/16/screens/tasks_screen.dart';
import 'package:udemy_flutter_course/section/6/user_card.dart';
import 'package:udemy_flutter_course/section/7/dice_page.dart';
import 'package:udemy_flutter_course/section/8/magic_ball.dart';
import 'package:udemy_flutter_course/section/9/xylophone.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => TaskData())],
      child: const MyApp(),
    ),
  );
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
        BitcoinTickerHomePage.routName: (context) =>
            const BitcoinTickerHomePage(),
        FlashChatWelcomeScreen.routName: (context) =>
            const FlashChatWelcomeScreen(),
        FlashChatLoginScreen.routName: (context) =>
            const FlashChatLoginScreen(),
        FlashChatRegistrationScreen.routName: (context) =>
            const FlashChatRegistrationScreen(),
        FlashChatScreen.routName: (context) => const FlashChatScreen(),
        TasksScreen.routName: (context) => const TasksScreen(),
      },
      initialRoute: HomePage.routName,
    );
  }
}
