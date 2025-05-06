import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Login form widget
class SignupWidget extends StatelessWidget {
  const SignupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),

        // Username or Email input
        TextField(
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffEAEAF5)),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffEAEAF5)),
            ),
            hintText: "Enter email or username",
            hintStyle: TextStyle(color: Color(0xffA8A7A7)),
          ),
        ),
        SizedBox(height: 8),

        // Password input
        TextField(
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffEAEAF5)),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffEAEAF5)),
            ),
            hintText: "Password",
            hintStyle: TextStyle(color: Color(0xffA8A7A7)),
          ),
        ),

        SizedBox(height: 10),

        // Confirm Password input
        TextField(
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffEAEAF5)),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffEAEAF5)),
            ),
            hintText: "confirm Password",
            hintStyle: TextStyle(color: Color(0xffA8A7A7)),
          ),
        ),
        SizedBox(height: 20),
        TextButton(
          onPressed: () {},
          child: Container(
            width: 258,
            height: 34,
            decoration: BoxDecoration(
              color: Color(0xffFF0036),
              borderRadius: BorderRadius.circular(22),
            ),
            child: Center(
              child: Text(
                "Log In",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),

        SizedBox(height: 20),
        Text(
          "OR",
          style: GoogleFonts.poppins(color: Color(0xffA8A7A7), fontSize: 12),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 47,
              height: 46,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,

                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    offset: Offset(0, 3),
                    blurRadius: 3,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Image.asset("images/facebook.png"),
            ),
            SizedBox(width: 20),
            Container(
              width: 47,
              height: 46,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,

                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    offset: Offset(0, 3),
                    blurRadius: 3,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Image.asset("images/twitter.png"),
            ),
            SizedBox(width: 20),
            Container(
              width: 47,
              height: 46,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,

                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    offset: Offset(0, 3),
                    blurRadius: 3,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Image.asset("images/google.png"),
            ),
          ],
        ),
      ],
    );
  }
}
