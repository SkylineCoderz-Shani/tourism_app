import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tourism_app/custom_widgets/custom_button.dart';
import 'package:tourism_app/custom_widgets/custom_input_field.dart';
import 'package:tourism_app/custom_widgets/small_text.dart';
import 'package:tourism_app/helpers/constants.dart';
import 'package:tourism_app/views/screens/screen_forget.dart';
import 'package:tourism_app/views/screens/screen_home_page.dart';
import 'package:tourism_app/views/screens/screen_signup.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Align(
                alignment: Alignment.centerLeft,
                child: LargeText(
                  text: "Login",
                )),
            LargeText(
              text: "App Logo",
            ).marginOnly(top: 15),
            SmallText(
              text: "Welcome back !",
            ).marginSymmetric(vertical: 15),
            CustomInputField(
              hint: "Email",
            ).marginSymmetric(vertical: 10),
            CustomInputField(
              hint: "Password",
              padding: EdgeInsets.only(top: 15.5.sp, left: 10.sp),
              isPasswordField: true,
            ).marginOnly(top: 20),
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {
                      Get.to(ScreenForget());
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.black),
                    ))),
            CustomButton(
                text: "Login",
                onPressed: () {
                  Get.to(ScreenHomePage());
                }).marginSymmetric(vertical: 20),
            Row(
              children: [
                Expanded(
                    child: Divider(
                  color: Colors.grey.withOpacity(.3),
                  indent: 20,
                  endIndent: 20,
                )),
                Text("Or"),
                Expanded(
                    child: Divider(
                  color: Colors.grey.withOpacity(.3),
                  indent: 20,
                  endIndent: 20,
                )),
              ],
            ).marginSymmetric(vertical: 20),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    text: "Facebook",
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/facebook (8) 1.svg"),
                    color: Color(0xFF365194),
                  ),
                ),
                Expanded(
                  child: CustomButton(
                    text: "Google",
                    onPressed: () {},
                    icon: Image.asset("assets/icons/ic_google.png"),
                  ),
                ),
              ],
            ).marginSymmetric(vertical: 20),
            RichText(
                text: TextSpan(
                    text: "Don’t have an account  ",
                    style: TextStyle(color: Colors.grey),
                    children: [
                  TextSpan(text: "|"),
                  TextSpan(
                    text: " Sign up",
                    style: TextStyle(color: appColor),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Get.to(ScreenSignup()),
                  )
                ]))
          ],
        ).marginSymmetric(horizontal: 20.sp),
      ),
    );
  }
}
