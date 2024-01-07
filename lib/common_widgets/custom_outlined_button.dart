import 'package:flutter/material.dart';


class CustomOutlineButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final Widget? icon;
  const CustomOutlineButton({
    super.key,
    this.onPressed,
    required this.text,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        side: MaterialStateProperty.all(
          BorderSide(
            color: Color(0xFFEFE3C8),
            width: 0.5,
          ),
        ),
        minimumSize: MaterialStateProperty.all(
          Size(double.infinity, 35),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon != null ? icon! : SizedBox(),
          icon != null
              ? SizedBox(
                  width: 20,
                )
              : SizedBox(),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFEFE3C8),
              fontSize: 16,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
