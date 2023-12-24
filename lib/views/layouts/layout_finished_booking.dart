import 'package:flutter/material.dart';
import 'package:tourism_app/models/finished_booking.dart';
import 'package:tourism_app/views/layouts/item_finished_booking.dart';

class LayoutFinishedBooking extends StatelessWidget {
  const LayoutFinishedBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: finishList.length,
      itemBuilder: (BuildContext context, int index) {
        var booking = finishList[index];

        return ItemFinishedBooking(
          finished: booking,
        );
      },
    );
  }
}
