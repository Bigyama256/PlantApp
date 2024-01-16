import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../utils/app_colors.dart';

class ChoosePlacePage extends StatelessWidget {
  const ChoosePlacePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: AppColors.primaryColor,
        child: Stack(
          children: [
            Align(
                alignment: Alignment.bottomLeft,
                child: Image.asset("assets/5.png")),
            Align(
                alignment: Alignment.bottomRight,
                child: Image.asset("assets/6.png")),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
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
                        'Choose a \nPlace',
                        style: TextStyle(
                          color: Color(0xFFEFE3C8),
                          fontSize: 48,
                          fontFamily: 'Almarai',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          placeCard("Living Room","assets/20.png"),
                          SizedBox(
                            width: 30,
                          ),
                          placeCard("Office ","assets/21.png"),
                          SizedBox(
                            width: 30,
                          ),
                          placeCard("Bathroom ","assets/22.png"),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          placeCard("Porch","assets/23.png"),
                          SizedBox(
                            width: 30,
                          ),
                          placeCard(" Balcony ","assets/24.png"),
                          SizedBox(
                            width: 30,
                          ),
                          placeCard(" Hall","assets/25.png"),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          placeCard("Kitchen","assets/26.png"),
                          SizedBox(
                            width: 30,
                          ),
                          placeCard("Bathroom","assets/27.png"),
                          SizedBox(
                            width: 30,
                          ),
                          placeCard("Garden","assets/28.png"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column placeCard(
    String placename,
    String Imagename,
  ) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Imagename),
            ),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          placename,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.yellowColor,
            fontSize: 12,
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
