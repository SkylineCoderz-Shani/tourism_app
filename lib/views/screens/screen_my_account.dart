import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_app/custom_widgets/small_text.dart';
import 'package:tourism_app/helpers/constants.dart';

class ScreenMyAccount extends StatelessWidget {
  const ScreenMyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LargeText(
          text: 'My Account',
          textColor: Colors.black,
        ),
        centerTitle: true,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Get.back(result: true);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/images/person.png"),
                ),
                Container(
                  height: 140,
                  width: 33,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.blueAccent),
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                ).paddingOnly(left: 75, top: 5),
              ],
            ).paddingOnly(top: 50),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SmallText(
                  text: 'Name',
                  textColor: Colors.grey,
                ),
                SizedBox(
                  width: 155,
                ),
                SmallText(
                  text: 'Edit',
                  textColor: appColor,
                ),
              ],
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  hintText: 'Zeeshan',
                  contentPadding: EdgeInsets.only(left: 30)),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SmallText(
                  text: 'Email',
                  textColor: Colors.grey,
                ),
                SizedBox(
                  width: 155,
                ),
                SmallText(
                  text: 'Edit',
                  textColor: appColor,
                ),
              ],
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'abc123@gmail.com',
                contentPadding: EdgeInsets.only(left: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
