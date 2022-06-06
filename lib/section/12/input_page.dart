import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:udemy_flutter_course/section/12/icon_content.dart';
import 'package:udemy_flutter_course/section/12/reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Calculator',
          style: TextStyle(color: Colors.pink, fontSize: 32),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onTap: () {
                      setState(
                        () {
                          updateColour(1);
                        },
                      );
                    },
                    colour: maleCardColour,
                    cardChild: const IconContent(
                      icon: FontAwesomeIcons.mars,
                      title: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onTap: () {
                      setState(
                            () {
                          updateColour(2);
                        },
                      );
                    },
                    colour: femaleCardColour,
                    cardChild: const IconContent(
                      icon: FontAwesomeIcons.venus,
                      title: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReusableCard(
              colour: activeCardColour,
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: bottomContainerHeight,
            width: double.infinity,
            color: bottomContainerColour,
            margin: const EdgeInsets.only(top: 10),
          )
        ],
      ),
    );
  }

  // 1 = male , 2 = female
  void updateColour(int gender) {
    //male card pressed
    if (gender == 1) {
      if (maleCardColour == inactiveCardColour) {
        maleCardColour = activeCardColour;
        femaleCardColour = inactiveCardColour;
      } else {
        maleCardColour = inactiveCardColour;
      }
    }
    //female card pressed
    if(gender == 2){
      if (femaleCardColour == inactiveCardColour) {
        femaleCardColour = activeCardColour;
        maleCardColour = inactiveCardColour;
      } else {
        femaleCardColour = inactiveCardColour;
      }
    }
  }
}
