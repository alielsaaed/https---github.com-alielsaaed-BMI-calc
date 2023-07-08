import 'package:bmi_calc/app_theme.dart';
import 'package:flutter/material.dart';

class WeightAgeCard extends StatelessWidget {
   WeightAgeCard({
    super.key,
    required this.text,
    required this.onAdd,
    required this.onMinus,
    required this.value,
  });
  final String text;
  final void Function() onAdd;
  final void Function() onMinus;
   final int value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Card(
        color: AppTheme.mainColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
             Text(
              "$value",
              style: const TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: onAdd,
                  child: const Icon(Icons.add),
                ),
                const SizedBox(width: 5),
                ElevatedButton(
                  onPressed: onMinus,
                  child: const Icon(Icons.remove),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
