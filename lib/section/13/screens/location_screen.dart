import 'package:flutter/material.dart';
import 'package:udemy_flutter_course/section/13/utilities/constans.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('images/location_background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.8),
              BlendMode.dstATop,
            ),
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.near_me,
                      size: 50,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.location_city,
                      size: 50,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: const [
                    Text(
                      '32\u00B0',
                      style: kTempTextStyle,
                    ),
                    Text(
                      '=',
                      style: kConditionTextStyle,
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 15),
                child: Text(
                  'some message',
                  textAlign: TextAlign.right,
                  style: kMessageTextStyle,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//todo: use this data in this file
// double temperature = decodeData['main']['temp'];
// int condition = decodeData['weather'][0]['id'];
// String cityName = decodeData['name'];
