import 'package:flutter/material.dart';
import 'package:plantapp/utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final bool? obscureText;
  const CustomTextField({
    super.key,
    this.hintText,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: TextField(
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          suffixIcon: obscureText != null
              ? Icon(
                  Icons.visibility_off,
                  color: AppColors.yellowColor,
                  size: 12,
                )
              : null,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFEFE3C8).withOpacity(0.7),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          fillColor: Color(0xFFEFE3C8).withOpacity(0.2),
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFEFE3C8).withOpacity(0.7),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFEFE3C8).withOpacity(0.7),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Color(0xFFEFE3C8),
            fontSize: 16,
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w400,
          ),
        ),
        cursorColor: Color(0xFFEFE3C8),
      ),
    );
  }
}
