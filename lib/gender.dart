import 'package:bmi_calc/app_theme.dart';
import 'package:flutter/material.dart';

class GenderItem extends StatelessWidget {
  const GenderItem({
    super.key,
    required this.text,
    required this.icon,
    this.isClicked = false,
  });
  final String text;
  final IconData icon;
  final bool isClicked;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: isClicked
              ? const Color.fromARGB(255, 118, 24, 155)
              : AppTheme.mainColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 70,
                color: Colors.white,
              ),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
