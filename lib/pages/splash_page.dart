import 'package:flutter/material.dart';
import 'package:plantapp/pages/start_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return StartPage();
          },
        ),
      );
    });
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF014738),
              Color(0xFF014546),
            ],
          ),
        ),
        child: Image.asset("assets/1.png"),
      ),
    );
  }
}
