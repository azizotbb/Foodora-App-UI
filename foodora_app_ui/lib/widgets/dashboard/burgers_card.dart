import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// A stateless widget that represents a burger item card
class BurgersCard extends StatelessWidget {
  const BurgersCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 211,
      width: 173,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color: Colors.white,

        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(205, 204, 241, 0.3),
            offset: Offset(0, 4),
            blurRadius: 7,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(height: 10),

          // Food image (burger)
          Image.asset("images/food5.png"),
          Container(
            margin: EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,

            // Item title
            child: Text(
              "Chicken Burger ",
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          // Rating stars image
          Container(
            margin: EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            child: Image.asset("images/stars.png"),
          ),

          // Price text
          Container(
            margin: EdgeInsets.only(left: 20, top: 9),
            alignment: Alignment.centerLeft,
            child: Text(
              "\$15",
              style: GoogleFonts.poppins(
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
