import 'package:flutter/material.dart';

// Widget to display three circular dots as page indicators
class CircleDots extends StatelessWidget {
  final bool oneActive;
  final bool twoActive;

  const CircleDots({super.key, this.oneActive = true, this.twoActive = false});

  @override
  Widget build(BuildContext context) {
    /// The active dot is colored red; inactive ones are grey.

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 3,
      children: [
        Container(
          decoration: BoxDecoration(
            color: oneActive ? Color(0xffFF0036) : Colors.grey,
            shape: BoxShape.circle,
          ),
          width: 7,
          height: 7,
        ),
        Container(
          decoration: BoxDecoration(
            color: twoActive ? Color(0xffFF0036) : Colors.grey,
            shape: BoxShape.circle,
          ),
          width: 7,
          height: 7,
        ),
      ],
    );
  }
}
