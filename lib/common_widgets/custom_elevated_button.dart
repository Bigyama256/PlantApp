import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final void Function()? onPressed;
  final Color backgroundColor;
  final double width;
  final double height;
  final String title;
  const CustomElevatedButton({
    super.key,
    this.onPressed,
    this.backgroundColor = AppColors.yellowColor,
    this.height = 35,
    this.width = double.infinity,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(backgroundColor),
        minimumSize: MaterialStateProperty.all(
          Size(width, height),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
          ),
        ),
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.primaryColor,
          fontSize: 16,
          fontFamily: 'Comfortaa',
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
