import 'package:doos/constant/constant.dart';
import 'package:doos/constant/custom_app_theme.dart';
import 'package:doos/constant/custom_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class NotificationScreen1 extends StatefulWidget {
  @override
  _NotificationScreen1State createState() => _NotificationScreen1State();
}

class _NotificationScreen1State extends State<NotificationScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomAppTheme.white,
        actions: [
          SizedBox(
            width: AppConstants.size30,
          ),
          Center(
            child: Text(
              'Title'.tr(),
              style: CustomTextstyle.getheme.bodyText1,
            ),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward,
            color: CustomAppTheme.blue,
            size: 30,
          ),
          SizedBox(
            width: AppConstants.size30,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: AppConstants.displayHeight(context) / 20,
            ),
            Divider(
              color: CustomAppTheme.grey,
              height: 2,
            ),
            SizedBox(
              height: AppConstants.displayHeight(context) / 25,
            ),
            Text(
              'Title'.tr(),
              style: CustomTextstyle.getheme.overline,
            ),
            SizedBox(
              height: AppConstants.displayHeight(context) / 30,
            ),
            // Text('Who May Use the Services',style: ,)
          ],
        ),
      ),
    );
  }
}
