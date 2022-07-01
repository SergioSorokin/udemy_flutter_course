import 'package:flutter/material.dart';

class CustomNavigationButton extends StatelessWidget {
  const CustomNavigationButton({
    required this.routName,
    required this.assetImage,
    Key? key,
  }) : super(key: key);
  final String assetImage;
  final String routName;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Image(
        image: AssetImage(assetImage),
      ),
      onPressed: () {
        Navigator.pushNamed(
          context,
          routName,
        );
      },
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
    );
  }
}