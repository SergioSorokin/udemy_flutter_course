import 'package:flutter/material.dart';
import 'package:udemy_flutter_course/section/13/utilities/constans.dart';

const String dCelsius = '\u00B0';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key, this.locationWeather}) : super(key: key);

  final dynamic locationWeather;

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  double temperature = 0.0;
  int condition = 0;
  String cityName = '';

  @override
  void initState() {
    super.initState();
    updateUI(widget.locationWeather);
  }

  updateUI(var weatherData) {
    temperature = weatherData['main']['temp'];
    condition = weatherData['weather'][0]['id'];
    cityName = weatherData['name'];
  }

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
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.transparent),
                      shadowColor:
                          MaterialStateProperty.all<Color>(Colors.transparent),
                    ),
                    child: const Icon(
                      Icons.near_me,
                      size: 50,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.transparent,
                      ),
                      shadowColor: MaterialStateProperty.all<Color>(
                        Colors.transparent,
                      ),
                    ),
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
                  children: [
                    Text(
                      '${temperature.toInt()}$dCelsius',
                      style: kTempTextStyle,
                    ),
                    const Text(
                      '☀',
                      style: kConditionTextStyle,
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 15),
                child: Text(
                  "It's 🍦 time in San Francisco",
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
