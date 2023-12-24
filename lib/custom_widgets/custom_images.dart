import 'package:flutter/material.dart';

class CustomImages extends StatelessWidget {
  String name;
  double? height;
  double? width;
  EdgeInsetsGeometry? imagePadding; // New parameter for custom padding

  CustomImages({
    required this.name,
    this.height,
    this.width,
    this.imagePadding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: imagePadding ?? EdgeInsets.zero,
      child: Image.asset(
        'assets/images/$name.png',
        height: height,
        width: width,
        fit: BoxFit.cover,
      ),
    );
  }
}
