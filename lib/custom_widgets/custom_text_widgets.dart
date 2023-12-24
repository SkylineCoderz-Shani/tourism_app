import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LargeText extends StatelessWidget {
  String text;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      color: color ?? Colors.black,
      fontSize: 18.sp,
      fontWeight: FontWeight.w800
    ),);
  }

  LargeText({
    required this.text,
    this.color,
  });
}
class ExtraLargeText extends StatelessWidget {
  String text;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      color: color ?? Colors.black,
      fontSize: 20.sp,
      fontWeight: FontWeight.w800
    ),);
  }

  ExtraLargeText({
    required this.text,
    this.color,
  });
}
class MediumText extends StatelessWidget {
  String text;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
        color: color ?? Colors.black,
        fontSize: 16.sp,
        fontWeight: FontWeight.w600
    ),);
  }

  MediumText({
    required this.text,
    this.color,
  });
}
class SmallText extends StatelessWidget {
  String text;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
        color: color ?? Colors.black,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400
    ),);
  }

  SmallText({
    required this.text,
    this.color,
  });
}
