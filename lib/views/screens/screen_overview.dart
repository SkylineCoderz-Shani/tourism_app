import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:tourism_app/custom_widgets/custom_button.dart';
import 'package:tourism_app/custom_widgets/custom_images.dart';
import 'package:tourism_app/custom_widgets/small_text.dart';
import 'package:tourism_app/helpers/constants.dart';
import 'package:tourism_app/views/screens/screen_pic_viewall.dart';

class ScreenOverview extends StatefulWidget {
  @override
  State<ScreenOverview> createState() => _ScreenOverviewState();
}

class _ScreenOverviewState extends State<ScreenOverview> {
  double _currentSliderValue = 0;
  double currentSliderValue = 0;
  double sliderValue = 0;
  double values = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: Get.width,
            height: Get.height,
            decoration: BoxDecoration(
                boxShadow: appBoxShadow,
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: Get.height * .23,
                    width: Get.width,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(15)),
                        image: DecorationImage(
                            image: AssetImage("assets/images/places.png"),
                            fit: BoxFit.cover)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Get.back(result: true);
                          },
                          icon: Icon(Icons.arrow_back_ios),
                          color: Colors.white,
                        ),
                        Container(
                          height: 60,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: Icon(
                            CupertinoIcons.pen,
                            color: appColor,
                            size: 40,
                          ),
                        ),
                      ],
                    ).paddingOnly(bottom: 80),
                  ),
                  ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        LargeText(
                          text: 'Grand Royale',
                          textColor: Colors.black,
                        ),
                        LargeText(
                          text: 'Park Hotel',
                          textColor: Colors.black,
                        ),
                      ],
                    ),
                    trailing: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        LargeText(
                          text: "\$ 220",
                          textColor: appColor,
                        ),
                        SmallText(
                          text: "Per Night",
                          textColor: Colors.black,
                        ),
                      ],
                    ),
                    subtitle: RichText(
                        text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            text: "Location name",
                            children: [
                          TextSpan(text: ""),
                          TextSpan(text: " 2 miles away"),
                        ])).marginSymmetric(vertical: 30),
                  ),
                  Divider(),
                  LargeText(
                    text: 'Summary',
                    textColor: Colors.black,
                  ).paddingOnly(right: 300),
                  SmallText(
                    text:
                        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia.',
                    textColor: Colors.black54,
                  ),
                  Container(
                    height: Get.height * .30,
                    width: Get.width * .9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: appBoxShadow,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            LargeText(
                              text: '4.2',
                              textColor: appColor,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                LargeText(
                                  text: 'Overall Rating',
                                  textColor: Colors.black,
                                ),
                                RatingBar.builder(
                                  initialRating: 4,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 15,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 1.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    size: 5,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ).paddingOnly(right: 40)
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SmallText(
                              text: 'Place',
                              textColor: Colors.black,
                            ),
                            Slider(
                              value: _currentSliderValue,
                              max: 20,
                              divisions: 10,
                              activeColor: appColor,
                              inactiveColor: Colors.grey.withOpacity(.3),
                              thumbColor: Colors.black,
                              label: _currentSliderValue.round().toString(),
                              onChanged: (double value) {
                                setState(() {
                                  _currentSliderValue = value;
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SmallText(
                              text: 'Service',
                              textColor: Colors.black,
                            ),
                            Slider(
                              value: currentSliderValue,
                              max: 20,
                              divisions: 10,
                              activeColor: appColor,
                              inactiveColor: Colors.grey.withOpacity(.3),
                              thumbColor: Colors.black,
                              label: currentSliderValue.round().toString(),
                              onChanged: (double value) {
                                setState(() {
                                  currentSliderValue = value;
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SmallText(
                              text: 'price',
                              textColor: Colors.black,
                            ),
                            Slider(
                              value: sliderValue,
                              max: 20,
                              divisions: 10,
                              activeColor: appColor,
                              inactiveColor: Colors.grey.withOpacity(.3),
                              thumbColor: Colors.black,
                              label: sliderValue.round().toString(),
                              onChanged: (double value) {
                                setState(() {
                                  sliderValue = value;
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SmallText(
                              text: 'Quality',
                              textColor: Colors.black,
                            ),
                            Slider(
                              value: values,
                              max: 20,
                              divisions: 10,
                              activeColor: appColor,
                              inactiveColor: Colors.grey.withOpacity(.3),
                              thumbColor: Colors.black,
                              label: values.round().toString(),
                              onChanged: (double value) {
                                setState(() {
                                  values = value;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SmallText(
                        text: 'Photos',
                        textColor: Colors.black,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(ScreenViewAll());
                        },
                        child: SmallText(
                          text: 'View all',
                          textColor: appColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            image: DecorationImage(
                                image: AssetImage('assets/images/places.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            image: DecorationImage(
                                image: AssetImage('assets/images/places.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            image: DecorationImage(
                                image: AssetImage('assets/images/places.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            image: DecorationImage(
                                image: AssetImage('assets/images/places.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SmallText(
                        text: 'Reviews',
                        textColor: Colors.black,
                      ),
                      SmallText(
                        text: 'View all',
                        textColor: appColor,
                      ),
                    ],
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset('assets/images/person.png'),
                    title: LargeText(
                      text: 'Alex Jack',
                      textColor: Colors.black,
                    ).paddingOnly(right: 100),
                    subtitle: SmallText(
                      text: '21 June, 2021 02:05 PM',
                      textColor: Colors.grey,
                    ),
                    trailing: RatingBar.builder(
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
                    ),
                  ),
                  SmallText(
                    text:
                        'Review text popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature',
                    textColor: Colors.black,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset('assets/images/person.png'),
                    title: LargeText(
                      text: 'Alex Jack',
                      textColor: Colors.black,
                    ).paddingOnly(right: 100),
                    subtitle: SmallText(
                      text: '21 June, 2021 02:05 PM',
                      textColor: Colors.grey,
                    ),
                    trailing: RatingBar.builder(
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
                    ),
                  ),
                  SmallText(
                    text:
                        'Review text popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature',
                    textColor: Colors.black,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomImages(
                    name: 'map',
                    width: Get.width,
                  ),
                  CustomButton(
                      width: Get.width * .5,
                      text: 'Book Now',
                      color: appColor,
                      onPressed: () {}),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
