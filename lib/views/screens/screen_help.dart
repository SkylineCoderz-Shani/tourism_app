import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_app/custom_widgets/custom_button.dart';
import 'package:tourism_app/custom_widgets/small_text.dart';
import 'package:tourism_app/helpers/constants.dart';

class ScreenHelp extends StatelessWidget {
  const ScreenHelp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: LargeText(
          text: 'Help',
          textColor: Colors.black,
        ),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: Get.height * .5,
              width: Get.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: appBoxShadow,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  LargeText(
                    text: 'Enter Details',
                    textColor: Colors.black,
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
                          hintText: 'Your Name',
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
                          hintText: 'Your Email',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(17)),
                    ),
                  ),
                  Container(
                    height: Get.height * .2,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Description',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(17)),
                    ),
                  ),
                  CustomButton(
                      width: Get.width * .5, text: 'Send', onPressed: () {}),
                ],
              ).paddingSymmetric(horizontal: 20),
            ),
            Column(
              children: [
                LargeText(
                  text: 'We Are Available On',
                  textColor: Colors.black,
                ).paddingOnly(right: 160, top: 80),
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.globe,
                      color: appColor,
                      size: 24,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: SmallText(
                          text: 'www.Tourism.com',
                          textColor: Colors.black,
                        ))
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.mail,
                      color: Colors.red,
                      size: 24,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: SmallText(
                          text: 'tourism07@gmail.com',
                          textColor: Colors.black,
                        ))
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.phone_circle_fill,
                      color: appColor,
                      size: 30,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: SmallText(
                          text: '+1-98765433456',
                          textColor: Colors.black,
                        ))
                  ],
                ),
              ],
            ),
          ],
        ).paddingSymmetric(horizontal: 20),
      ),
    );
  }
}
