import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_app/custom_widgets/small_text.dart';
import 'package:tourism_app/helpers/constants.dart';
import 'package:tourism_app/models/select_places_category.dart';
import 'package:tourism_app/views/screens/screen_add_new_place.dart';

class ScreenPlaceCategory extends StatelessWidget {
  SelectPlacesCategory places;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LargeText(
          text: 'Select Category',
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
          Card(
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(places.imgUrl),
                    ),
                  ),
                ),
                LargeText(
                  text: places.placesName,
                  textColor: Colors.black,
                ),
                IconButton(
                    onPressed: () {
                      Get.to(ScreenAddNewPlace());
                    },
                    icon: Icon(
                      CupertinoIcons.forward,
                      color: appColor,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ScreenPlaceCategory({
    required this.places,
  });
}
