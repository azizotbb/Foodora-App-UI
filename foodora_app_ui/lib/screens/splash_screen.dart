import 'package:flutter/material.dart';
import 'package:foodora_app_ui/screens/auth_screen.dart';

/// Splash screen shown at app launch. Navigates to the auth screen after a delay.
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Wait for 5 seconds, then navigate to IntrosScreen
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => AuthWidget()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xffFF0036), Color(0xffFF6787)],
          ),
        ),
        child: Stack(
          children: [
            Center(child: Image.asset("images/logo1.png")),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset("images/logo2.png"),
            ),
          ],
        ),
      ),
    );
  }
}
