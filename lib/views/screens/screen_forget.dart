import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tourism_app/custom_widgets/custom_button.dart';
import 'package:tourism_app/custom_widgets/custom_input_field.dart';
import 'package:tourism_app/custom_widgets/small_text.dart';
import 'package:tourism_app/views/screens/screen_otp.dart';

class ScreenForget extends StatelessWidget {
  const ScreenForget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Get.back(result: true);
        },
      )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            LargeText(
              text: 'Forgot Password',
            ),
            SizedBox(
              height: 10,
            ),
            SmallText(
              text: 'Enter your email to recover your password. ',
            ),
            SizedBox(
              height: 100,
            ),
            CustomInputField(
              hint: 'Email',
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
                text: 'send',
                width: Get.width,
                onPressed: () {
                  Get.to(ScreenOtp());
                }),
          ],
        ).marginSymmetric(horizontal: 20),
      ),
    );
  }
}
