import 'package:flutter/material.dart';
import 'package:udemy_flutter_course/section/12/constants.dart';


class BottomButton extends StatelessWidget {
  final  Function()? onTap;
  final String buttonTitle;

  const BottomButton({
    Key? key, required this.onTap, required this.buttonTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child:  Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        height: kBottomContainerHeight,
        width: double.infinity,
        color: kBottomContainerColour,
        margin: const EdgeInsets.only(top: 10),
      ),
    );
  }
}