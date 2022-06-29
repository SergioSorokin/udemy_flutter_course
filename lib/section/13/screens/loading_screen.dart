import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:udemy_flutter_course/section/13/services/location.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);
  final String buttonText = 'Get Location';
  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
    getData();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }

  void getData() async {
    var url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=London,uk&appid=2636ad7f6dcd263345b33ab86d6f8aa4');
    http.Response response = await http.get(url);
    String data ;
    if (response.statusCode == 200){
      data = response.body;
    }else{
      data = response.statusCode.toString();
    }
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          getLocation();
        },
        child: Text(widget.buttonText),
      ),
    );
  }
}
