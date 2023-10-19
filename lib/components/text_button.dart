import 'package:flutter/material.dart';

class ButtonWithBackground extends StatelessWidget {
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final double width;

  const ButtonWithBackground(
      {required this.onPressed,
      this.backgroundColor = Colors.black12,
      required this.text,
      this.textColor = Colors.white,
      this.width = 100});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50,
        width: width,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color?>(backgroundColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
