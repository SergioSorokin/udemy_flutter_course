import 'package:flutter/material.dart';
import 'package:udemy_flutter_course/section/13/screens/location_screen.dart';
import 'package:udemy_flutter_course/section/13/services/location.dart';
import 'package:udemy_flutter_course/section/13/services/networking.dart';

const apiKey = '2636ad7f6dcd263345b33ab86d6f8aa4';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);
  final String buttonText = 'Get Location';
  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  late double latitude;
  late double longitude;

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();
    latitude = location.latitude;
    longitude = location.longitude;

    NetworkHelper networkHelper = NetworkHelper(
        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');

    var weatherData = await networkHelper.getData();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const LocationScreen();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          getLocationData();
        },
        child: Text(widget.buttonText),
      ),
    );
  }
}
