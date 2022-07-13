import 'package:doos/bottomnavigationbar/bottom_navigation.dart';
import 'package:doos/constant/constant.dart';
import 'package:doos/constant/custom_app_theme.dart';
import 'package:doos/constant/custom_textstyle.dart';
import 'package:doos/constant/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomAppTheme.white,
        actions: [
          SizedBox(
            width: AppConstants.size30,
          ),
          SvgPicture.asset('assets/images/IconImages/notification_icon.svg'),
          SizedBox(
            width: AppConstants.size30,
          ),
          Center(
            child: Text(
              'Alerts'.tr(),
              style: CustomTextstyle.getheme.bodyText1,
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BottomNavigation(),
                  ));
            },
            child: Icon(
              Icons.arrow_forward,
              color: CustomAppTheme.blue,
              size: 30,
            ),
          ),
          SizedBox(
            width: AppConstants.size30,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView.builder(
          itemCount: 4,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) => Column(
            children: [
              Container(
                height: AppConstants.displayHeight(context) / 8,
                width: AppConstants.displayWidth(context),
                // color: CustomAppTheme.grey.withOpacity(0.1),
                child: Row(
                  children: [
                    Container(
                      height: AppConstants.displayHeight(context) / 12,
                      width: AppConstants.displayWidth(context) / 5.5,
                      decoration: BoxDecoration(
                        // color: CustomAppTheme.red,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AllImages.raceavtar),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(
                      width: AppConstants.size20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Title'.tr(),
                          style: CustomTextstyle.getheme.overline,
                        ),
                        Container(
                          height: AppConstants.displayHeight(context) / 20,
                          width: AppConstants.displayWidth(context) / 2.5,
                          // color: CustomAppTheme.red,
                          child: Text(
                            'Test message text containing the text of the message content'
                                .tr(),
                            style: CustomTextstyle.getheme.headline2,
                            maxLines: 3,
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    CircleAvatar(
                      radius: 4,
                      backgroundColor: CustomAppTheme.red,
                    ),
                  ],
                ),
              ),
              Divider(
                color: CustomAppTheme.grey,
                height: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
