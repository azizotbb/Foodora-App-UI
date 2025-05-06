import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RedBurgersCard extends StatelessWidget {
  const RedBurgersCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 211,
      width: 173,

      // Decorating the container with a gradient background and rounded corners
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),

        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(255, 0, 54, 0.24),
            offset: Offset(0, 4),
            blurRadius: 7,
            spreadRadius: 0,
          ),
        ],

        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xffFF0036), Color(0xffFF6787)],
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 10),

          // Displaying the burger image
          Image.asset("images/food4.png"),

          // Displaying the title of the burger with a white text color
          Container(
            margin: EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            child: Text(
              "Zinger Burger",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          // Displaying a rating stars image below the title
          Container(
            margin: EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            child: Image.asset("images/stars.png"),
          ),

          // Displaying the price of the burger
          Container(
            margin: EdgeInsets.only(left: 20, top: 9),
            alignment: Alignment.centerLeft,
            child: Text(
              "\$12",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
