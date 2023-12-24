import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  String text;
  Color? textColor;
  double? fontSize;
  FontWeight? fontWeight;

  SmallText({
    required this.text,
    this.textColor,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize ?? 12,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: textColor ?? Colors.grey,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class LargeText extends StatelessWidget {
  String text;
  Color? textColor;
  double? fontSize;
  FontWeight? fontWeight;

  LargeText({
    required this.text,
    this.textColor,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize ?? 26,
        fontWeight: fontWeight ?? FontWeight.w900,
        color: textColor ?? Colors.black,
        fontFamily: "Kailasa",
      ),
    );
  }
}
