import 'package:flutter/material.dart';
import 'package:udemy_flutter_course/section/13/screens/loading_screen.dart';

class ClimaHomePage extends StatelessWidget {
  static const String routName = '/Clima';
  const ClimaHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LoadingScreen();
  }
}
