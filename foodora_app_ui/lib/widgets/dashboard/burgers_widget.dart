import 'package:flutter/material.dart';
import 'package:foodora_app_ui/widgets/dashboard/burgers_container.dart';
import 'package:foodora_app_ui/widgets/dashboard/circle_dots.dart';

class BurgersWidget extends StatefulWidget {
  const BurgersWidget({super.key});

  @override
  State<BurgersWidget> createState() => _BurgersWidgetState();
}

class _BurgersWidgetState extends State<BurgersWidget> {
  PageController moveTo = PageController();

  // Tracks the current page index
  int imgValue = 0;

  // control which dot is active (for CircleDots widget)
  bool oneValue = true;
  bool twoValue = false;

  @override
  void initState() {
    // Initialize PageController
    moveTo = PageController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 250,
          child: PageView(
            controller: moveTo,
            onPageChanged: (value) {
              if (imgValue == 0) {
                imgValue = imgValue + 1;
              } else {
                imgValue = imgValue - 1;
              }

              // Update the dot indicators and button text based on the page
              if (imgValue == 1) {
                oneValue = false;
                twoValue = true;
              } else {
                oneValue = true;
                twoValue = false;
              }
              setState(() {});
            },
            children: [BurgersContainer(), BurgersContainer()],
          ),
        ),
        CircleDots(oneActive: oneValue, twoActive: twoValue),
      ],
    );
  }
}
