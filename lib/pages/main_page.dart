import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:plantapp/pages/person_page.dart';
import 'package:plantapp/pages/plant_page.dart';
import 'package:plantapp/pages/search_page.dart';
import 'package:plantapp/utils/app_colors.dart';

import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List pages = [
    HomePage(),
    PlantPage(),
    SearchPage(),
    PersonPage(),
  ];
  int selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: selectedPage < 2
          ? FloatingActionButton(
            backgroundColor: AppColors.lightgreenColor,
              onPressed: () {},
              child: Icon(
                Icons.add,
                color: AppColors.yellowColor,
                size: 22,
              ),
            )
          : null,
      body: pages[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedPage,
        onTap: (value) {
          selectedPage = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: AppColors.greenColor,
            icon: Icon(
              Icons.home,
              color: AppColors.yellowColor,
              size: 18,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.spa,
              color: AppColors.yellowColor,
              size: 18,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: AppColors.yellowColor,
              size: 18,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: AppColors.yellowColor,
              size: 18,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
