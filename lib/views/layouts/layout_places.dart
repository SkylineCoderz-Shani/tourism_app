import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_app/helpers/constants.dart';
import 'package:tourism_app/models/select_places_category.dart';
import 'package:tourism_app/views/layouts/item_places.dart';
import 'package:tourism_app/views/screens/screen_place_category.dart';

class LayoutPlaces extends StatelessWidget {
  late SelectPlacesCategory placesCategory;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(ScreenPlaceCategory(
            places: placesCategory,
          ));
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: appColor,
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return ItemPlaces();
        },
      ),
    );
  }
}
