import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_app/custom_widgets/small_text.dart';
import 'package:tourism_app/helpers/constants.dart';

class ScreenNotification extends StatelessWidget {
  const ScreenNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LargeText(
          text: 'Notifications',
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
                height: 100,
                width: Get.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: appBoxShadow,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    LargeText(
                      text: 'Review',
                      textColor: Colors.black,
                    ).paddingOnly(right: 220, top: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SmallText(
                          text: 'Alex Jack give you a review',
                          textColor: Colors.grey,
                        ),
                        Icon(
                          CupertinoIcons.mail,
                          color: appColor,
                        ),
                      ],
                    ),
                  ],
                )),
            SizedBox(
              height: 30,
            ),
            Container(
                height: 100,
                width: Get.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: appBoxShadow,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    LargeText(
                      text: 'Booking',
                      textColor: Colors.black,
                    ).paddingOnly(right: 220, top: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SmallText(
                          text:
                              'You have a new booking from \nAlex Jack on 07 Dec 2021.',
                          textColor: Colors.grey,
                        ),
                        Icon(
                          CupertinoIcons.mail,
                          color: appColor,
                        ),
                      ],
                    ),
                  ],
                )),
          ],
        ).paddingSymmetric(horizontal: 30),
      ),
    );
  }
}
