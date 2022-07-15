import 'package:flutter/material.dart';
import 'package:udemy_flutter_course/section/15/components/rounded_button.dart';
import 'package:udemy_flutter_course/section/15/screens/flash_chat_login_screen.dart';
import 'package:udemy_flutter_course/section/15/screens/flash_chat_registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class FlashChatWelcomeScreen extends StatefulWidget {
  static const String routName = 'FlashChatWelcomeScreen';
  const FlashChatWelcomeScreen({Key? key}) : super(key: key);

  @override
  _FlashChatWelcomeScreenState createState() => _FlashChatWelcomeScreenState();
}

class _FlashChatWelcomeScreenState extends State<FlashChatWelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);

    controller.forward();

    controller.addListener(() {
      setState(() {});
      print(animation.value);
    });
  }

  @override
  void dispose() {
    super.dispose();

    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'flash-logo',
                  child: SizedBox(
                    child: Image.asset('images/flash-logo.png'),
                    height: 60.0,
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Flash Chat',
                      textStyle: const TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                      speed: const Duration(milliseconds: 200),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              title: 'Log In',
              color: Colors.lightBlueAccent,
              onPressed: () {
                Navigator.pushNamed(context, FlashChatLoginScreen.routName);
              },
            ),
            RoundedButton(
              title: 'Register',
              color: Colors.blueAccent,
              onPressed: () {
                Navigator.pushNamed(
                    context, FlashChatRegistrationScreen.routName);
              },
            ),
          ],
        ),
      ),
    );
  }
}


