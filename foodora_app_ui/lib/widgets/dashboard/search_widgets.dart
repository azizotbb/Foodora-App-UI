import 'package:flutter/material.dart';

class SearchWidgets extends StatelessWidget {
  const SearchWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),

      // A TextField widget for entering the search
      child: TextField(
        decoration: InputDecoration(
          // Placeholder text when the field is empty
          hintText: "Search for a food item",

          // Styling the border when the field is enabled but not focused
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),

            borderSide: BorderSide(color: Color(0xffEAEAF5)),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
        ),
      ),
    );
  }
}
