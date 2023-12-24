import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tourism_app/custom_widgets/custom_button.dart';
import 'package:tourism_app/custom_widgets/custom_images.dart';
import 'package:tourism_app/custom_widgets/small_text.dart';

class ScreenChangePassword extends StatelessWidget {
  const ScreenChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: LargeText(
          text: 'Change Password',
          textColor: Colors.black,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back(result: true);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomImages(name: 'password'),
          Container(
            height: 60,
            width: Get.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.black),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Old Password',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(17)),
            ),
          ),
          Container(
            height: 60,
            width: Get.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.black),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'New Password',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(17)),
            ),
          ),
          Container(
            height: 60,
            width: Get.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.black),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(17)),
            ),
          ),
          CustomButton(
                  width: Get.width * .5,
                  text: 'Change Password',
                  onPressed: () {})
              .paddingOnly(bottom: 20),
        ],
      ).paddingSymmetric(horizontal: 30),
    );
  }
}
