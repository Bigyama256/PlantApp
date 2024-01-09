import 'package:flutter/material.dart';
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
          color:selectedTab==index? AppColors.lightgreenColor:null,
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
    return Text('T');
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('N');
  }
}
