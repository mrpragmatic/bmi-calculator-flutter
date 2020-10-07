import 'package:bmi_calculator/gender_type.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inActiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType selectedGender;
  // Color maleCardColor = inActiveCardColor;
  // Color femaleCardColor = inActiveCardColor;

  // //male = 1, female = 2
  // void updateColor(GenderType genderType) {
  //   if (genderType == GenderType.male) {
  //     if (maleCardColor == inActiveCardColor) {
  //       maleCardColor = activeCardColor;
  //       femaleCardColor = inActiveCardColor;
  //     } else {
  //       maleCardColor = inActiveCardColor;
  //     }
  //   }
  //   //female
  //   if (genderType == GenderType.female) {
  //     if (femaleCardColor == inActiveCardColor) {
  //       femaleCardColor = activeCardColor;
  //       maleCardColor = inActiveCardColor;
  //     } else {
  //       femaleCardColor = inActiveCardColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          setState(() {
                            selectedGender = GenderType.male;
                          });
                        });
                      },
                      colour: selectedGender == GenderType.male
                          ? activeCardColor
                          : inActiveCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = GenderType.female;
                        });
                      },
                      colour: selectedGender == GenderType.female
                          ? activeCardColor
                          : inActiveCardColor,
                      cardChild: IconContent(
                        label: 'FEMALE',
                        icon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Expanded(
                child: ReusableCard(
                  colour: activeCardColor,
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              color: bottomContainerColor,
              height: bottomContainerHeight,
              width: double.infinity,
            )
          ],
        ));
  }
}
