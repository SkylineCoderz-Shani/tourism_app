import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tourism_app/custom_widgets/small_text.dart';
import 'package:tourism_app/helpers/constants.dart';
import 'package:tourism_app/views/screens/screen_login.dart';
import '../../custom_widgets/custom_button.dart';
import '../../custom_widgets/custom_images.dart';
import 'screen_splash2.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/splash1.png"),
                fit: BoxFit.cover)),
        child: SafeArea(
          child: Column(
            children: [
              CustomImages(name: "splash2"),
              LargeText(
                text: "Tourism",
                textColor: appColor,
              ),
              Spacer(),
              CustomButton(
                height: 45,
                text: "Get Started",
                onPressed: () {
                  Get.to(ScreenSplash2());
                },
                width: Get.width * .7,
              ),
              RichText(
                  text: TextSpan(text: "Already have an account ", children: [
                TextSpan(
                    text: "|",
                    style: TextStyle(color: Colors.grey, fontSize: 12.sp)),
                TextSpan(
                  text: " Login",
                  style: TextStyle(fontSize: 12.sp),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Get.to(ScreenLogin()),
                ),
              ])).marginSymmetric(vertical: 30),
            ],
          ).paddingSymmetric(horizontal: 20, vertical: 30),
        ),
      ),
    ));
  }
}
