import 'package:doos/authentication/create_account.dart';
import 'package:doos/authentication/login_account.dart';
import 'package:doos/authentication/login_code.dart';
import 'package:doos/constant/constant.dart';
import 'package:doos/constant/custom_app_theme.dart';
import 'package:doos/screens/home_page.dart';
import 'package:doos/screens/notification.dart';
import 'package:doos/screens/race_page.dart';
import 'package:doos/screens/setting.dart';
import 'package:doos/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  int isSelected = 0;
  final List = [
    HomePage(),
    RacePage(),
    NotificationScreen(),
    Setting(),
  ];

  get pages => List;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: List[_selectedIndex],
      bottomNavigationBar: Container(
        // margin: EdgeInsets.symmetric(horizontal: 30),
        height: AppConstants.displayHeight(context) / 10,
        width: AppConstants.displayWidth(context),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: CustomAppTheme.grey.withOpacity(0.5),
            blurRadius: 10,
          ),
        ], color: CustomAppTheme.white),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: CustomAppTheme.grey,
          currentIndex: _selectedIndex,
          backgroundColor: CustomAppTheme.white,
          iconSize: 20,
          onTap: (val) {
            setState(() {
              _selectedIndex = val;
              var currentPage = pages[val];
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/IconImages/doos_icon.svg'),
              title: SizedBox(),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/IconImages/race_icon.svg'),
              title: SizedBox(),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                  'assets/images/IconImages/notification_icon.svg'),
              title: SizedBox(),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                  'assets/images/IconImages/settings_icon.svg'),
              title: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
