import 'package:flutter/material.dart';
import 'package:plantapp/pages/sign_up_page.dart';

import '../common_widgets/custom_elevated_button.dart';
import '../common_widgets/custom_outlined_button.dart';
import '../utils/app_colors.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: AppColors.primaryColor.withOpacity(0.9),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Image.asset(
                "assets/1.png",
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 110,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Get Started!',
                      style: TextStyle(
                        color: Color(0xFFFAF3DD),
                        fontSize: 48,
                        fontFamily: 'Almarai',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Join us now and\nstart Your Journey.',
                      style: TextStyle(
                        color: Color(0xFFFAF3DD),
                        fontSize: 26,
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 120,
                    ),
                    CustomElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SignUpPage();
                            },
                          ),
                        );
                      },
                      title: 'Create an account',
                    ),
                    CustomOutlineButton(
                      text: 'Sign up with google',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
