import 'package:flutter/material.dart';
import 'package:foodora_app_ui/widgets/auth/login_widget.dart';
import 'package:foodora_app_ui/widgets/auth/signup_widget.dart';

/// Main authentication widget managing log in and sign up views
class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Defines two tabs: Log In and Sign Up
      child: Scaffold(
        body: SingleChildScrollView(
          // Allows vertical scrolling if content overflows
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                clipBehavior:
                    Clip.none, // Allows overflow of positioned elements
                children: [
                  // Background image at the top
                  Image.asset("images/image.png"),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 40,
                      left: 40,
                      top: 230,
                    ),
                    child: Container(
                      // Card-style container for tab content
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                            offset: Offset(0, 4),
                            blurRadius: 10,
                            spreadRadius: 5,
                          ),
                        ],

                        borderRadius: BorderRadius.circular(30),
                      ),
                      height: 443,
                      padding: EdgeInsets.symmetric(horizontal: 26),
                      child: Column(
                        children: [
                          SizedBox(height: 35),

                          // Tab bar with Log In and Sign Up options
                          TabBar(
                            indicatorSize: TabBarIndicatorSize.tab,
                            dividerHeight: 0,
                            indicator: BoxDecoration(
                              color: Color(0xffFF0036),
                              borderRadius: BorderRadius.circular(50),
                            ),

                            labelColor: Colors.white,
                            unselectedLabelColor: Color(0xffFF0036),
                            tabs: [
                              SizedBox(
                                height: 50,
                                child: Center(child: Text("Log In")),
                              ),
                              SizedBox(
                                height: 50,
                                child: Center(child: Text("Sign Up")),
                              ),
                            ],
                          ),
                          Expanded(
                            flex: 2,

                            // Tab content: shows LoginWidget or SignupWidget
                            child: TabBarView(
                              children: [LoginWidget(), SignupWidget()],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Positioned(
                  //   bottom: -160,
                  //   right: 0,
                  //   child: Image.asset("images/Vegitables.png"),
                  // ),
                ],
              ),
              SizedBox(height: 70),
              Image.asset("images/Vegitables.png"),
            ],
          ),
        ),
      ),
    );
  }
}
