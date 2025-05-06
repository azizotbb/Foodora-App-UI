import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesCard extends StatelessWidget {
  // Required properties for customizing the card's appearance

  final Color color; // Border color of the card
  final String img; // Image to display inside the card
  final Color shadowColor; // Shadow color of the card
  final String title; // Title text to display under the image

  const CategoriesCard({
    super.key,
    required this.color,
    required this.img,
    required this.shadowColor,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10, bottom: 10, left: 10),
      height: 70,
      width: 110,
      decoration: BoxDecoration(
        color: Colors.white,

        boxShadow: [
          BoxShadow(
            color: shadowColor,
            offset: Offset(0, 4),
            blurRadius: 7,
            spreadRadius: 0,
          ),
        ],
        borderRadius: BorderRadius.circular(35),
        border: Border.all(width: 1, color: color),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(img),
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 10,
              color: color,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
