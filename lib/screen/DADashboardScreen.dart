import 'package:dating_app/fragment/DAHomeFragment.dart';

import 'package:dating_app/fragment/DAProfileFragment.dart';
import 'package:dating_app/screen/PurchaseMoreScreen.dart';
import 'package:dating_app/utils/DAColors.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';


class DADashboardScreen extends StatefulWidget {
  @override
  DADashboardScreenState createState() => DADashboardScreenState();
}

class DADashboardScreenState extends State<DADashboardScreen> {
  int currentIndex = 0;
  List<Widget> tabs = [
    DAHomeFragment(),
    PurchaseMoreScreen(),
    PurchaseMoreScreen(),
    DAProfileFragment(),
  ];

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: primaryColor,
        unselectedItemColor: black,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.inbox), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
        ],
      ),
    );
  }
}
