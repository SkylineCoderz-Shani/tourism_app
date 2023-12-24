import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_app/custom_widgets/custom_button.dart';
import 'package:tourism_app/custom_widgets/small_text.dart';
import 'package:tourism_app/helpers/constants.dart';

class ScreenAddNewPlace extends StatelessWidget {
  String selectedDuration = 'Per Night';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: LargeText(
          text: 'Add New Place',
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: Get.height * .2,
            width: Get.width * .7,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black38)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.picture_as_pdf_outlined),
                ).paddingOnly(
                  top: 30,
                ),
                LargeText(
                  text: 'Add Images',
                  textColor: Colors.black,
                ).paddingOnly(
                  bottom: 30,
                ),
              ],
            ),
          ),
          LargeText(
            text: 'Add Details',
            textColor: appColor,
          ).paddingOnly(right: 220),
          Container(
            width: Get.width,
            height: 60,
            child: TextField(
              decoration: InputDecoration(
                labelText: "Location Name",
                hintText: "Grand Royale Hotel",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: Get.width * .3,
                height: 80,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Price",
                    hintText: "\$200",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ), // Initial value/ Initial value
              Container(
                width: Get.width * 0.3,
                height: 80,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: "Duration",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                        value: selectedDuration,
                        onChanged: (String? newValue) {
                          if (newValue != null) {
                            selectedDuration = newValue;
                            print('Selected Duration: $selectedDuration');
                          }
                        },
                        items: <String>['Per Night', 'Per Week', 'Per Month']
                            .map<DropdownMenuItem<String>>(
                              (String value) => DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: Get.width,
            height: 60,
            child: TextField(
              decoration: InputDecoration(
                labelText: "Available Rooms",
                hintText: "Total Rooms",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: Get.width,
            height: 130,
            child: TextField(
              maxLines: 300,
              decoration: InputDecoration(
                labelText: "Summary",
                hintText: "text here...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          CustomButton(
            width: Get.width * .6,
            color: appColor,
            text: 'Upload',
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.check_circle,
                            size: 60,
                            color: appColor,
                          ),
                          LargeText(
                            text: "Uploaded Successfully",
                            textColor: appColor,
                            // fontWeight: FontWeight.w400,
                          )
                        ],
                      ),
                    );
                  });
            },
            shadowColor: Colors.black,
            elevation: 0,
            textFont: 16,
          ),
        ],
      ).paddingSymmetric(horizontal: 40, vertical: 30),
    );
  }
}
