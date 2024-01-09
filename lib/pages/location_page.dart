import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:plantapp/common_widgets/custom_elevated_button.dart';
import 'package:plantapp/common_widgets/custom_outlined_button.dart';
import 'package:plantapp/utils/app_colors.dart';

import 'main_page.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Icon(
                Icons.arrow_back_ios,
                color: AppColors.yellowColor,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Your location',
                style: TextStyle(
                  color: AppColors.yellowColor,
                  fontSize: 48,
                  fontFamily: 'Almarai',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'To give you correct care\n instructions, we need to know\n your location',
                style: TextStyle(
                  color: Color(0xFFEFE3C8),
                  fontSize: 16,
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 170,
                  width: 170,
                  decoration: BoxDecoration(
                      color: Color(0xFF0ACF83), shape: BoxShape.circle),
                  child: Image.asset("assets/17.png"),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              CustomElevatedButton(
                title: "Add Location",
              ),
              SizedBox(
                height: 5,
              ),
              CustomOutlineButton(
                text: "Skip",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MainPage();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
