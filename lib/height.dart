import 'package:bmi_calc/app_theme.dart';
import 'package:flutter/material.dart';

class HeightCard extends StatefulWidget {
  const HeightCard({super.key});

  @override
  State<HeightCard> createState() => _HeightCardState();
}

class _HeightCardState extends State<HeightCard> {
  double height = 180;

  double getHeight() {
    return height;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
          width: double.infinity,
          height: 180,
          child: Card(
              color: AppTheme.mainColor,
              child: Column(
                children: [
                  const Text(
                    "HEIGHT",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${height.round()} CM",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                    ),
                  ),
                  Slider(
                    activeColor: const Color.fromARGB(255, 118, 24, 155),
                    value: height,
                    min: 50,
                    max: 250,
                    onChanged: (value) {
                      height = value;
                      setState(() {});
                    },
                  )
                ],
              ))),
    );
  }
}
