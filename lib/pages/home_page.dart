import 'package:flutter/material.dart';
import 'package:plantapp/common_widgets/custom_elevated_button.dart';
import 'package:plantapp/common_widgets/custom_outlined_button.dart';
import 'package:plantapp/pages/chooseplace_page.dart';
import 'package:plantapp/utils/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedTab = 0;
  List tabs = [
    TodayPage(),
    NextPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: AppColors.primaryColor,
      child: Stack(
        children: [
          Image.asset("assets/18.png"),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Santa Cruz de la Sierra',
                  style: TextStyle(
                    color: AppColors.yellowColor,
                    fontSize: 25,
                    fontFamily: 'Almarai',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '50°C',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: 'Almarai',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    tabCard('Today', 0),
                    SizedBox(
                      width: 20,
                    ),
                    tabCard('Next', 1),
                  ],
                ),
                Expanded(
                  child: tabs[selectedTab],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget tabCard(String title, int index) {
    return InkWell(
      onTap: () {
        selectedTab = index;
        setState(() {});
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: selectedTab == index ? AppColors.lightgreenColor : null,
        ),
        child: Text(
          title,
          style: TextStyle(
            color: AppColors.yellowColor,
            fontSize: 12,
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

class TodayPage extends StatelessWidget {
  const TodayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 130,
            decoration: BoxDecoration(
              color: AppColors.greenColor,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(
                      color: Color(0xFFEFE3C8),
                      fontSize: 18,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 45,
                    decoration: ShapeDecoration(
                      color: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Let's start by setting up a place/\nroom where you save your plans.",
                        style: TextStyle(
                          color: Color(0xFFEFE3C8),
                          fontSize: 14,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/19.png"),
                        backgroundColor: Colors.transparent,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Add place',
                            style: TextStyle(
                              color: AppColors.yellowColor,
                              fontSize: 14,
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Start',
                            style: TextStyle(
                              color: AppColors.yellowColor,
                              fontSize: 14,
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 140,
                      ),
                      CircleAvatar(
                        backgroundColor: AppColors.primaryColor,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return ChoosePlacePage();
                                },
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.yellowColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Premium',
            style: TextStyle(
              color: AppColors.yellowColor,
              fontSize: 18,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            width: double.infinity,
            height: 100,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: ShapeDecoration(
                      color: AppColors.greenColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    height: 80,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Plan Premium',
                          style: TextStyle(
                            color: AppColors.yellowColor,
                            fontSize: 12,
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Get more benefits',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.yellowColor,
                            fontSize: 16,
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: AppColors.lightgreenColor,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    "P",
                    style: TextStyle(
                      color: AppColors.yellowColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          CustomElevatedButton(title: "Learn more about Premium"),
        ],
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('N');
  }
}
