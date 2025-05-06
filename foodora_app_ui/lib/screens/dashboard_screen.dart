import 'package:flutter/material.dart';
import 'package:foodora_app_ui/widgets/dashboard/bottomsheet_widget.dart';
import 'package:foodora_app_ui/widgets/dashboard/burgers_widget.dart';
import 'package:foodora_app_ui/widgets/dashboard/categories_widget.dart';
import 'package:foodora_app_ui/widgets/dashboard/search_widgets.dart';
import 'package:google_fonts/google_fonts.dart';

/// DashboardScreen displays the main dashboard UI with categories, search,
/// burger list, and a floating cart button with bottom sheet interaction.
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  // Key to control the Scaffold, especially to open the bottom sheet

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,

      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [Image.asset("images/profile.png")],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            // A single item in the Drawer
            ListTile(
              // Icon for the item
              leading: Icon(Icons.food_bank),
              title: Text('Dashboard'),
              onTap: () {
                // Closes the Drawer when tapped
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      // Scrollable body of the dashboard
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Choose the ",
                style: GoogleFonts.poppins(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Food you love",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 29),

            // Custom search bar widget
            SearchWidgets(),
            SizedBox(height: 40),

            // Categories section title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Categories",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 20),

            // Custom widget showing food categories
            CategoriesWidget(),
            SizedBox(height: 40),

            // Burgers section title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Burgers",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            // Custom widget showing burger items
            BurgersWidget(),
            SizedBox(height: 30),
            // Floating cart button that opens bottom sheet
            Container(
              alignment: Alignment.centerRight,

              child: InkWell(
                onTap: () {
                  scaffoldKey.currentState!.showBottomSheet(
                    (context) => BottomsheetWidget(),
                  );
                },
                child: Container(
                  height: 55,
                  width: 55,
                  margin: EdgeInsets.only(right: 22),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(500),
                    color: Color(0xffFF0036),
                    border: Border.all(width: 2, color: Colors.white),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(255, 0, 54, 0.24),
                        offset: Offset(0, 10),
                        blurRadius: 5,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Image.asset("images/cart.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
