import 'package:flutter/material.dart';
import 'package:tourism_app/custom_widgets/custom_bottom_navy_bar.dart';
import 'package:tourism_app/helpers/constants.dart';
import 'package:tourism_app/views/layouts/layout_booking.dart';
import 'package:tourism_app/views/layouts/layout_places.dart';
import 'package:tourism_app/views/layouts/layout_profile.dart';

class ScreenHomePage extends StatefulWidget {
  const ScreenHomePage({Key? key}) : super(key: key);
  @override
  BottomNavyBarState createState() => BottomNavyBarState();
}

class BottomNavyBarState extends State<ScreenHomePage> {
  PageController _pageController = PageController();
  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: <Widget>[
          LayoutBooking(),
          LayoutPlaces(),
          LayoutProfile(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavyBar(
        containerHeight: 55.0,
        backgroundColor: Colors.white,
        selectedIndex: _currentIndex,
        showElevation: false,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() {
          _currentIndex = index;
          _pageController.animateToPage(index,
              duration: const Duration(milliseconds: 100),
              curve: Curves.easeIn);
        }),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            inactiveColor: Colors.black,
            icon: const Icon(Icons.apps),
            title: const Text('Booking'),
            activeColor: appColor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            inactiveColor: Colors.black,
            icon: const Icon(Icons.place),
            title: const Text('Place'),
            activeColor: appColor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            inactiveColor: Colors.black,
            icon: const Icon(Icons.account_box),
            title: const Text('Account'),
            activeColor: appColor,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
