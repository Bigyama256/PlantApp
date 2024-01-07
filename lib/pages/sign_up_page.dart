import 'package:flutter/material.dart';
import 'package:plantapp/common_widgets/custom_elevated_button.dart';
import 'package:plantapp/common_widgets/custom_outlined_button.dart';
import 'package:plantapp/pages/sign_in_page.dart';
import 'package:plantapp/pages/welcome_page.dart';

import '../common_widgets/custom_textfield.dart';
import '../utils/app_colors.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isPrivacyChecked = false;
  buildVerifyBottomSheet() {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        color: AppColors.yellowColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.close,
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Verify Your Email Address',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF1C161E),
                    fontSize: 24,
                    fontFamily: 'Almarai',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'We’ve sent a link to your email address.\n In order to activate your account,\n you need to click on the link.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xCC1C161E),
                    fontSize: 16,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Didn’t recieve it?',
                        style: TextStyle(
                          color: Color(0xB21C161E),
                          fontSize: 16,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: ' ',
                        style: TextStyle(
                          color: Color(0xFF1C161E),
                          fontSize: 16,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: 'try again',
                        style: TextStyle(
                          color: Color(0xFF1C161E),
                          fontSize: 16,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

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
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 18,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Create\nAccount',
                  style: TextStyle(
                    color: Color(0xFFEFE3C8),
                    fontSize: 48,
                    fontFamily: 'Almarai',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Email',
                  style: TextStyle(
                    color: Color(0xFFEFE3C8),
                    fontSize: 16,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                CustomTextField(
                  hintText: 'e.g. example@mail.com',
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Password',
                  style: TextStyle(
                    color: Color(0xFFEFE3C8),
                    fontSize: 16,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                CustomTextField(
                  hintText: 'e.g. Examp!e2006',
                  obscureText: true,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Confirm Password',
                  style: TextStyle(
                    color: Color(0xFFEFE3C8),
                    fontSize: 16,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                CustomTextField(
                  obscureText: true,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isPrivacyChecked,
                      side: BorderSide(
                        color: AppColors.yellowColor,
                      ),
                      onChanged: (value) {
                        isPrivacyChecked = !isPrivacyChecked;
                        setState(() {});
                      },
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'I agree to the ',
                            style: TextStyle(
                              color: Color(0xFFEFE3C8),
                              fontSize: 15,
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: 'terms',
                            style: TextStyle(
                              color: Color(0xE5FAF3DD),
                              fontSize: 15,
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(
                            text: ' And ',
                            style: TextStyle(
                              color: Color(0xFFEFE3C8),
                              fontSize: 15,
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: 'privacy policy',
                            style: TextStyle(
                              color: Color(0xE5FAF3DD),
                              fontSize: 15,
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CustomElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return WelcomePage();
                        },
                      ),
                    );
                  },
                  title: "Create an account",
                ),
                CustomOutlineButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) {
                    //       return SignInPage();
                    //     },
                    //   ),
                    // );
                    showModalBottomSheet(
                      // shape: RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.only(
                      //     topLeft: Radius.circular(12),
                      //     topRight: Radius.circular(12),
                      //   ),
                      // ),
                      backgroundColor: Colors.transparent,
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height / 3,
                      ),
                      context: context,
                      builder: (context) {
                        return buildVerifyBottomSheet();
                      },
                    );
                  },
                  text: 'Sign Up with Google',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
