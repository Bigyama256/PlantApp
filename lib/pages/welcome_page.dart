import 'package:flutter/material.dart';
import 'package:plantapp/utils/app_colors.dart';

import 'onboarding_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return OnboardingPage();
              },
            ),
          );
        },
        child: Container(
          clipBehavior: Clip.hardEdge,
          padding: EdgeInsets.only(left: 30),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/4.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 120,
              ),
              Text(
                'WELCOME',
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 48,
                  fontFamily: 'Almarai',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Let's start",
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 20,
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
