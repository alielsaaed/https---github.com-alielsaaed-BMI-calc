import 'package:bmi_calc/gender.dart';
import 'package:bmi_calc/height.dart';
import 'package:bmi_calc/weight_age.dart';
import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isMalePressed = false;
  bool isFemalePressed = false;
  int age = 20;
  int weight = 65;

  int getWeight() {
    return weight;
  }

  _handleMalePress() {
    isMalePressed = !isMalePressed;
    isFemalePressed = false;
    setState(() {});
  }

  _handleFemalePress() {
    isFemalePressed = !isFemalePressed;
    isMalePressed = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 30, 30),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: _handleMalePress,
                          child: GenderItem(
                            isClicked: isMalePressed,
                            icon: Icons.male,
                            text: 'Male',
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: InkWell(
                          onTap: _handleFemalePress,
                          child: GenderItem(
                            isClicked: isFemalePressed,
                            icon: Icons.female,
                            text: 'Female',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const HeightCard(),
                  Row(
                    children: [
                      Expanded(
                        child: WeightAgeCard(
                          onAdd: () {
                            weight++;
                            setState(() {});
                          },
                          onMinus: () {
                            weight--;
                            setState(() {});
                          },
                          value: weight,
                          text: 'WEIGHT',
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: WeightAgeCard(
                          onAdd: () {
                            age++;
                            setState(() {});
                          },
                          onMinus: () {
                            if (age > 15) age--;
                            setState(() {});
                          },
                          value: age,
                          text: 'AGE',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Spacer(),
                  Container(
                      margin: const EdgeInsets.all(10),
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (!isFemalePressed && !isMalePressed) {
                            Flushbar(
                              backgroundColor: Colors.red,
                              title: 'Gender selection error.',
                              message: 'You must enter a gender.',
                              duration: const Duration(seconds: 3),
                            ).show(context);
                          }
                        },
                        child: const Text(
                          "CALCULATE",
                          style: TextStyle(
                            fontSize: 19,
                          ),
                        ),
                      )),
                  const SizedBox(height: 3)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
