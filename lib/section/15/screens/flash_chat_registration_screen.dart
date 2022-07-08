import 'package:flutter/material.dart';
import 'package:udemy_flutter_course/section/15/components/rounded_button.dart';
import 'package:udemy_flutter_course/section/15/flash_chat_constants.dart';

class FlashChatRegistrationScreen extends StatefulWidget {
  static const String routName = 'FlashChatRegistrationScreen';
  const FlashChatRegistrationScreen({Key? key}) : super(key: key);

  @override
  _FlashChatRegistrationScreenState createState() =>
      _FlashChatRegistrationScreenState();
}

class _FlashChatRegistrationScreenState
    extends State<FlashChatRegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'flash-logo',
              child: SizedBox(
                height: 200.0,
                child: Image.asset('images/flash-logo.png'),
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Enter your email'),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Enter your password.'),
            ),
            const SizedBox(
              height: 24.0,
            ),
            RoundedButton(
              title: 'Register',
              color: Colors.blueAccent,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
