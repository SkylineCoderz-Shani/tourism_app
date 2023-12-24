import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tourism_app/custom_widgets/small_text.dart';

class ScreenConfirmBooking extends StatelessWidget {
  const ScreenConfirmBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: LargeText(
          text: 'Booking Detail',
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
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 200,
              width: Get.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage('assets/images/places.png'),
                    fit: BoxFit.cover),
              ),
              child: LargeText(
                text: 'Grand Royle Hotel',
                textColor: Colors.white,
              ).paddingOnly(top: 160, right: 200),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LargeText(
                  text: 'Person Name',
                  textColor: Colors.black,
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/person.png'),
                ),
              ],
            ).paddingOnly(top: 20),
            SmallText(
              text: 'abc123@gmail.com',
              textColor: Colors.grey,
            ).paddingOnly(right: 225, bottom: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmallText(
                  text: 'Booking From',
                  textColor: Colors.black,
                ),
                SizedBox(
                  width: 70,
                ),
                SmallText(
                  text: '26 Aug, 2021',
                  textColor: Colors.black,
                )
              ],
            ),
            Divider(
              height: 30,
              color: Colors.grey.withOpacity(.4),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmallText(
                  text: 'Booking To',
                  textColor: Colors.black,
                ),
                SizedBox(
                  width: 90,
                ),
                SmallText(
                  text: '02 Sep, 2021',
                  textColor: Colors.black,
                )
              ],
            ),
            Divider(
              height: 30,
              color: Colors.grey.withOpacity(.4),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmallText(
                  text: 'Number of Rooms',
                  textColor: Colors.black,
                ),
                SizedBox(
                  width: 130,
                ),
                SmallText(
                  text: '1',
                  textColor: Colors.black,
                )
              ],
            ),
            Divider(
              height: 30,
              color: Colors.grey.withOpacity(.4),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmallText(
                  text: 'Adults (age 15+)',
                  textColor: Colors.black,
                ),
                SizedBox(
                  width: 150,
                ),
                SmallText(
                  text: '2',
                  textColor: Colors.black,
                )
              ],
            ),
            Divider(
              height: 30,
              color: Colors.grey.withOpacity(.4),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmallText(
                  text: 'Children (age 0 to 15)',
                  textColor: Colors.black,
                ),
                SizedBox(
                  width: 120,
                ),
                SmallText(
                  text: '0',
                  textColor: Colors.black,
                )
              ],
            ),
            Divider(
              height: 30,
              color: Colors.grey.withOpacity(.4),
            ),
          ],
        ).marginSymmetric(horizontal: 20),
      ),
    );
  }
}
