import 'package:flutter/material.dart';
import 'package:foodora_app_ui/widgets/dashboard/burgers_card.dart';
import 'package:foodora_app_ui/widgets/dashboard/red_burgers_card.dart';
import 'package:google_fonts/google_fonts.dart';

// A stateful widget that displays two burger cards with tap interactions
class BurgersContainer extends StatefulWidget {
  const BurgersContainer({super.key});

  @override
  State<BurgersContainer> createState() => _BurgersContainerState();
}

class _BurgersContainerState extends State<BurgersContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 20),
          // Row containing two burger cards
          Row(
            children: [
              SizedBox(width: 20),
              InkWell(
                onTap: () {
                  // Show a dialog when this card is tapped
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text(
                          "Zinger Burger",
                          style: GoogleFonts.poppins(color: Color(0xffFF6787)),
                        ),
                        content: Text("Do you want to add a new item?"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              "Add",
                              style: GoogleFonts.poppins(
                                color: Color(0xffFF6787),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              "Cancel",
                              style: GoogleFonts.poppins(color: Colors.black),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: RedBurgersCard(), // Custom burger card widget
              ),
              SizedBox(width: 10),

              InkWell(
                onTap: () {
                  // Show a dialog when this card is tapped
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text(
                          "Chicken Burger",
                          style: GoogleFonts.poppins(color: Color(0xffFF6787)),
                        ),
                        content: Text("Do you want to add a new item?"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              "Add",
                              style: GoogleFonts.poppins(
                                color: Color(0xffFF6787),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              "Cancel",
                              style: GoogleFonts.poppins(color: Colors.black),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: BurgersCard(), // Custom burger card widget
              ),
            ],
          ),
        ],
      ),
    );
  }
}
