import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_app/custom_widgets/custom_container.dart';
import 'package:tourism_app/custom_widgets/small_text.dart';
import 'package:tourism_app/helpers/constants.dart';
import 'package:tourism_app/views/screens/screen_change_password.dart';
import 'package:tourism_app/views/screens/screen_notification.dart';

class ScreenSetting extends StatefulWidget {
  @override
  State<ScreenSetting> createState() => _ScreenSettingState();
}

class _ScreenSettingState extends State<ScreenSetting> {
  bool _isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LargeText(
          text: 'Settings',
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
        children: [
          CustomContainer(
            height: 70,
            color: Colors.white,
            textColor: Colors.black,
            icon: CupertinoIcons.bell,
            iconColor: appColor,
            text: 'Notification',
            onPressed: () {
              Get.to(ScreenNotification());
            },
            textPadding: EdgeInsets.only(right: 110),
            child: Switch(
              value: _isSwitched,
              onChanged: (value) {
                setState(() {
                  _isSwitched = value;
                });
              },
              activeTrackColor: Colors.green,
              activeColor: Colors.white,
            ),
          ),
          CustomContainer(
            height: 70,
            color: Colors.white,
            textColor: Colors.black,
            icon: Icons.lock,
            iconColor: appColor,
            text: 'Change Password',
            textPadding: EdgeInsets.only(right: 180),
            onPressed: () {
              Get.to(ScreenChangePassword());
            },
          ),
          CustomContainer(
            height: 70,
            color: Colors.white,
            textColor: Colors.black,
            icon: Icons.book,
            iconColor: appColor,
            text: 'Terms and Conditions',
            textPadding: EdgeInsets.only(right: 150),
          ),
          CustomContainer(
            height: 70,
            color: Colors.white,
            textColor: Colors.black,
            icon: Icons.login_outlined,
            iconColor: appColor,
            text: 'Logout',
            textPadding: EdgeInsets.only(right: 250),
          ),
        ],
      ),
    );
  }
}
