import 'dart:io';

import 'package:justjam/screens/beverage/beverage_main_screen.dart';
import 'package:justjam/screens/coffingnote/coffingnote_intro_screen.dart';
import 'package:justjam/screens/coupon/coupon_main_screen.dart';
import 'package:justjam/screens/home__screen.dart';
import 'package:justjam/screens/searchitem/searchitem_active_screen.dart';
import 'package:flutter/material.dart';
import 'package:justjam/utill/default.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  var _pages = [
    HomeScreen(),
    SearchItemActive(),
    CouponMain(),
    BeverageMain(),
    coffingNoteIntro(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('알림'),
                content: Text('종료하시겠습니까?'),
                actions: [
                  FlatButton(
                      onPressed: () {
                        return exit(0);
                      },
                      child: Text('확인')),
                  FlatButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('취소'))
                ],
              );
            });
        return false;
      },
      child: Scaffold(
        bottomNavigationBar: FFNavigationBar(
          theme: FFNavigationBarTheme(
            barBackgroundColor: Colors.white,
            selectedItemBorderColor: Colors.white,
            selectedItemBackgroundColor: kMainColor,
            selectedItemIconColor: Colors.white,
            selectedItemLabelColor: Colors.black,
          ),
          selectedIndex: selectedIndex,
          onSelectTab: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            FFNavigationBarItem(
              iconData: Icons.home,
              label: '홈',
            ),
            FFNavigationBarItem(
              iconData: Icons.search_outlined,
              label: '공간검색',
            ),
            FFNavigationBarItem(
              iconData: FontAwesomeIcons.ticketAlt,
              label: '쿠폰',
            ),
            FFNavigationBarItem(
              iconData: FontAwesomeIcons.coffee,
              label: '음료소개',
            ),
            FFNavigationBarItem(
              iconData: Icons.sticky_note_2_outlined,
              label: '커핑노트',
            ),
          ],
        ),
        body: _pages[selectedIndex],
      ),
    );
  }
}
