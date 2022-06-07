import 'package:flutter/material.dart';
import 'package:udemy_flutter_course/section/12/constants.dart';

class IconContent extends StatelessWidget {
  const IconContent({
    required this.icon,
    required this.title,
    Key? key,
  }) : super(key: key);

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  <Widget>[
        Icon(
          icon,
          color: Colors.white,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          title,
          style: kLabelTextStile
        )
      ],
    );
  }
}