import 'package:flutter/material.dart';
import 'package:udemy_flutter_course/section/13/utilities/constans.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({Key? key}) : super(key: key);

  @override
  State<CityScreen> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/city_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: ElevatedButton(
                  onPressed: () {
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 50.0,
                  ),
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
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: kTextFieldInputDecoration,
                  onChanged: (value) {
                    print(value);
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                },
                child: const Text(
                  'Get Weather',
                  style: kButtonTextStyle,
                ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
