import 'package:flutter/material.dart';
import 'package:udemy_flutter_course/home_page.dart';
import 'package:udemy_flutter_course/section/6/user_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.routName: (context) => HomePage.initRoute(context),
        UserCard.routName: (context) => const UserCard(),
      },
      initialRoute: HomePage.routName,
    );
  }
}
