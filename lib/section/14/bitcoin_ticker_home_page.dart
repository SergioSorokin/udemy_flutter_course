import 'package:flutter/material.dart';
import 'package:udemy_flutter_course/section/14/price_screen.dart';

class BitcoinTickerHomePage extends StatelessWidget {
  static const String routName = '/BitcoinTicker';
  const BitcoinTickerHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PriceScreen();
  }
}
