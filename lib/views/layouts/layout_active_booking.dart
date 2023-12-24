import 'package:flutter/material.dart';
import 'package:tourism_app/models/active_booking.dart';
import 'package:tourism_app/views/layouts/item_active_booking.dart';

class LayoutActiveBooking extends StatelessWidget {
  const LayoutActiveBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: activeList.length,
      itemBuilder: (BuildContext context, int index) {
        var active = activeList[index];

        return ItemActiveBooking(
          active: active,
        );
      },
    );
  }
}
