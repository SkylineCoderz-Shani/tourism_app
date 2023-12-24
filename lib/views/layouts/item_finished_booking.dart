import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_app/custom_widgets/small_text.dart';
import 'package:tourism_app/helpers/constants.dart';
import 'package:tourism_app/models/finished_booking.dart';

class ItemFinishedBooking extends StatelessWidget {
  FinishedBooking finished;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: appBoxShadow,
            color: Colors.white),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(10)),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(finished.imageUrl))),
          ),
          Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  LargeText(
                    text: finished.customerName,
                    textColor: Colors.black,
                  ),
                  RichText(
                      text: TextSpan(
                          text: "Booking From : ",
                          style: subtile1,
                          children: [
                        TextSpan(text: finished.bookingFrom, style: subtile2)
                      ])),
                  RichText(
                      text: TextSpan(
                          text: "Booking to       : ",
                          style: subtile1,
                          children: [
                        TextSpan(text: finished.bookingTo, style: subtile2)
                      ]))
                ]).marginOnly(left: 5, top: 5),
          ),
          Column(
            children: [
              Text(finished.bookingDate),
              Text(finished.bookingStatus),
            ],
          ).marginOnly(left: 5, top: 10),
        ]));
  }

  ItemFinishedBooking({
    required this.finished,
  });
}
