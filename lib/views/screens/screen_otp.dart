import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_app/custom_widgets/custom_button.dart';
import 'package:tourism_app/custom_widgets/custom_images.dart';
import 'package:tourism_app/custom_widgets/custom_otp_code.dart';
import 'package:tourism_app/custom_widgets/small_text.dart';
import 'package:tourism_app/helpers/constants.dart';

class ScreenOtp extends StatelessWidget {
  const ScreenOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomImages(name: 'otp'),
          Spacer(),
          LargeText(
            text: 'Verification',
            textColor: Colors.black,
          ),
          SmallText(
            text: 'Enter the OTP code sent to your email',
            textColor: Colors.black,
            // textPadding: EdgeInsets.only(right: 33, top: 10),
          ),
          Spacer(),
          CustomOtpCode(),
          Spacer(),
          SmallText(
            text: 'Did not receive a code?',
            textColor: Colors.grey,
          ),
          CustomButton(
              text: 'RESEND',
              textFont: 18,
              color: Colors.white,
              shadowColor: Colors.white,
              elevation: 10,
              textColor: appColor,
              onPressed: () {}),
          CustomButton(
              text: 'Done',
              textFont: 18,
              textColor: Colors.white,
              width: Get.width,
              shadowColor: Colors.black87,
              elevation: 15,
              onPressed: () {}),
          Spacer()
        ],
      ).marginSymmetric(horizontal: 50),
    );
  }
}
