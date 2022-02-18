import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Udemy Flutter course',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  <Widget>[
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/100_years.jpg'),
              ),
              const Text(
                'Name LastName',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                    fontSize: 16,
                    color: Colors.teal.shade100,
                  letterSpacing: 2.5,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
