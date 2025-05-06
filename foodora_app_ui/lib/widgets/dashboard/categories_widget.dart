import 'package:flutter/material.dart';
import 'package:foodora_app_ui/widgets/dashboard/categories_card.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,

      // ListView with horizontal scrolling to display multiple categories
      child: ListView(
        scrollDirection: Axis.horizontal, // Enables horizontal scrolling
        children: [
          CategoriesCard(
            color: Color(0xffFF0036),
            img: "images/food1.png",
            shadowColor: Color.fromRGBO(255, 0, 54, 0.24),
            title: "Burgers",
          ),
          CategoriesCard(
            color: Color(0xffA8A7A7),
            img: "images/food2.png",
            shadowColor: Color.fromRGBO(39, 39, 39, 0.24),
            title: "Pizza",
          ),
          CategoriesCard(
            color: Color(0xffA8A7A7),
            img: "images/food3.png",
            shadowColor: Color.fromRGBO(39, 39, 39, 0.24),
            title: "chicken",
          ),
        ],
      ),
    );
  }
}
