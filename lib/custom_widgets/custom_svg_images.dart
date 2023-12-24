import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSvgImages extends StatelessWidget{
  String name;
  double? height, width;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset('assets/images/icons/$name.svg',height: height,width: width,);
  }

  CustomSvgImages({
    required this.name,
    this.height,
    this.width,
  });
}