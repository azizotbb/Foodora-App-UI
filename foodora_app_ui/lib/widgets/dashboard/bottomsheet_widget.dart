import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// A stateless widget that represents a bottom sheet UI for checkout summary
class BottomsheetWidget extends StatelessWidget {
  const BottomsheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 1000,
      decoration: BoxDecoration(
        // Gradient background for a stylish look
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xffFF0036), Color(0xffFF6787)],
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Column for showing Total and Delivery amount
              Column(
                children: [
                  SizedBox(height: 10),
                  Text(
                    "Total : \$27 ",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10),

                  Text(
                    "   Delivery : \$3 ",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),

              // Checkout button
              TextButton(
                onPressed: () {},
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  width: 120,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      "Checkout",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
