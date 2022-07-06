import 'package:flutter/material.dart';
import 'package:udemy_flutter_course/section/15/screens/welcome_screen.dart';

class FlashChatHomePage extends StatelessWidget {
  static const String routName = '/FlashChat';
  const FlashChatHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const WelcomeScreen();
  }
}
