import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:plantapp/common_widgets/custom_elevated_button.dart';
import 'package:plantapp/pages/location_page.dart';
import 'package:plantapp/utils/app_colors.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentOnboardingPage = 0;
  final PageController pageController = PageController();
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                IconButton(
                  onPressed: () {
                    if (currentOnboardingPage == 0) {
                      Navigator.pop(context);
                    } else {
                      pageController.previousPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.linear);
                    }
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.yellowColor,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: PageView.builder(
                    controller: pageController,
                    onPageChanged: (value) {
                      currentOnboardingPage = value;
                    },
                    itemCount: onboarding.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              onboarding[index]['question'],
                              style: TextStyle(
                                color: Color(0xFFEFE3C8),
                                fontSize: 48,
                                fontFamily: 'Almarai',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Expanded(
                              child: ListView.separated(
                                itemCount: onboarding[index]['options'].length,
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    height: 10,
                                  );
                                },
                                itemBuilder:
                                    (BuildContext context, int index1) {
                                  return Container(
                                    padding: EdgeInsets.all(10),
                                    height: 125,
                                    width: double.infinity,
                                    color: Color(0xFF036247),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 100,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                onboarding[index]['options']
                                                    [index1]['image'],
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                onboarding[index]['options']
                                                    [index1]['title'],
                                                style: TextStyle(
                                                    color:
                                                        AppColors.yellowColor),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                onboarding[index]['options']
                                                    [index1]['description'],
                                                style: TextStyle(
                                                    color:
                                                        AppColors.yellowColor),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: CustomElevatedButton(
                      onPressed: () {
                        if (currentOnboardingPage < onboarding.length - 1) {
                          pageController.animateToPage(
                            currentOnboardingPage + 1,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.linear,
                          );
                        } else if (currentOnboardingPage == 2) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return LocationPage();
                              },
                            ),
                          );
                        }
                      },
                      width: 100,
                      title: "Next",
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

List onboarding = [
  {
    "question": 'Indoor or Outdoor',
    "options": [
      {
        "image": "assets/7.png",
        "title": 'Indoor',
        "description": 'To care for plants indoors',
      },
      {
        "image": "assets/8.png",
        "title": 'Outdoor',
        "description": 'For potted plants in the garden, balcony or terrace',
      },
      {
        "image": "assets/9.png",
        "title": 'Indoor and Outdoor',
        "description": 'For the care of any plant',
      },
    ],
  },
  {
    "question": 'Skill Level',
    "options": [
      {
        "image": "assets/10.png",
        "title": 'Beginner',
        "description": 'From time to time I remember to water my plants',
      },
      {
        "image": "assets/11.png",
        "title": 'Intermediate',
        "description": 'I have my plants under control',
      },
      {
        "image": "assets/12.png",
        "title": 'Expert',
        "description": 'I am the best at taking care of plants',
      },
    ],
  },
  {
    "question": 'Commitment level',
    "options": [
      {
        "image": "assets/13.png",
        "title": 'Low',
        "description": 'I just want to dedicate the time necessary',
      },
      {
        "image": "assets/14.png",
        "title": 'Half',
        "description": 'I would like to spend some time on it',
      },
      {
        "image": "assets/15.png",
        "title": 'High',
        "description": ' live for plants',
      },
    ],
  },
];
