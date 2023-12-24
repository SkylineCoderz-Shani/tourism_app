import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:tourism_app/custom_widgets/small_text.dart';
import 'package:tourism_app/helpers/constants.dart';

class ScreenMyRating extends StatelessWidget {
  const ScreenMyRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LargeText(
          text: 'My Ratings',
          textColor: Colors.black,
        ),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 120,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: appBoxShadow,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/images/person.png'),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          LargeText(
                            text: 'Name',
                            textColor: Colors.black,
                          ).paddingOnly(right: 80, top: 25),
                          SmallText(
                            text: 'Review description',
                            textColor: Colors.grey,
                          ),
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 15,
                            itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              size: 5,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ).paddingOnly(right: 50),
                        ],
                      ),
                    ],
                  ),
                ).paddingSymmetric(horizontal: 20),
                Divider(
                  height: 20,
                  color: Colors.transparent,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
