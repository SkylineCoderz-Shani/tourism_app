import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_app/custom_widgets/small_text.dart';

class ScreenViewAll extends StatelessWidget {
  final List<String> photoUrls = [
    'assets/images/places.png',
    'assets/images/places.png',
    'assets/images/places.png',
    'assets/images/places.png',
    'assets/images/places.png',
    'assets/images/places.png',
    'assets/images/places.png',
    'assets/images/places.png',
    'assets/images/places.png',
    'assets/images/places.png',
    'assets/images/places.png',
    // Add more photo URLs with different sizes
    // ...
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: LargeText(
            text: 'Photos',
            textColor: Colors.black,
          ),
          centerTitle: true,
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Get.back(result: true);
              }),
        ),
        body: SafeArea(
          child: Wrap(
            spacing: 2.0,
            runSpacing: 8.0,
            children: photoUrls.map((url) {
              return Container(
                width: 100, // Adjust the width of each photo
                height: 100, // Adjust the height of each photo
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(url),
                  ),
                ),
              );
            }).toList(),
          ),
        ));
  }
}
