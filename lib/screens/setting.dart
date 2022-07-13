import 'package:doos/constant/constant.dart';
import 'package:doos/constant/custom_app_theme.dart';
import 'package:doos/constant/custom_textstyle.dart';
import 'package:doos/constant/images.dart';
import 'package:doos/screens/home_page_2.dart';
import 'package:doos/screens/home_page_4.dart';
import 'package:doos/screens/home_page_5.dart';
import 'package:doos/screens/locationScreens/location.dart';
import 'package:doos/screens/locationScreens/location2.dart';
import 'package:doos/screens/password.dart';
import 'package:doos/screens/profile1.dart';
import 'package:doos/screens/race_page_2.dart';
import 'package:doos/screens/race_page_3.dart';
import 'package:doos/screens/race_page_4.dart';
import 'package:doos/screens/setting1.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomAppTheme.white,
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "Account Information".tr(),
                style: CustomTextstyle.getheme.headline4,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 30),
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(AllImages.mainavtar))),
              ),
            ),
            Center(
              child: Text(
                "Editing the picture".tr(),
                style: CustomTextstyle.getheme.headline3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "the account".tr(),
                style: CustomTextstyle.getheme.headline2,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: CustomAppTheme.grey.withOpacity(0.2),
                    offset: Offset(5, 7),
                    blurRadius: 7,
                  )
                ],
                color: CustomAppTheme.white,
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.person_outline,
                      color: Colors.green,
                    ),
                    title: Text(
                      "Edit account".tr(),
                      style: CustomTextstyle.getheme.headline2,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Setting1(),
                          ));
                    },
                  ),
                  Divider(
                    color: CustomAppTheme.grey,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Location(),
                          ));
                    },
                    leading: Icon(
                      Icons.location_on_outlined,
                      color: Colors.cyan,
                    ),
                    title: Text(
                      "Address and location".tr(),
                      style: CustomTextstyle.getheme.headline2,
                    ),
                  ),
                  Divider(
                    color: CustomAppTheme.grey,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Password(),
                          ));
                    },
                    leading: Icon(
                      Icons.mail,
                      color: CustomAppTheme.red,
                    ),
                    title: Text(
                      "Edit email".tr(),
                      style: CustomTextstyle.getheme.headline2,
                    ),
                  ),
                  Divider(
                    color: CustomAppTheme.grey,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Location2(),
                          ));
                    },
                    leading: Icon(
                      Icons.payments,
                      color: Colors.green[300],
                    ),
                    title: Text(
                      "Payment Options".tr(),
                      style: CustomTextstyle.getheme.headline2,
                    ),
                  ),
                  Divider(
                    color: CustomAppTheme.grey,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.notifications,
                      color: CustomAppTheme.red,
                    ),
                    title: Text(
                      "Activate alerts".tr(),
                      style: CustomTextstyle.getheme.headline2,
                    ),
                  ),
                  Divider(
                    color: CustomAppTheme.grey,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.email_outlined,
                      color: Colors.amber,
                    ),
                    title: Text(
                      "email".tr(),
                      style: CustomTextstyle.getheme.headline2,
                    ),
                  ),
                  Divider(
                    color: CustomAppTheme.grey,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.message_outlined,
                      color: CustomAppTheme.blue,
                    ),
                    title: Text(
                      "English".tr(),
                      style: CustomTextstyle.getheme.headline2,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "other".tr(),
                style: CustomTextstyle.getheme.headline2,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: CustomAppTheme.grey.withOpacity(0.2),
                    offset: Offset(5, 7),
                    blurRadius: 7,
                  )
                ],
                color: CustomAppTheme.white,
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.security,
                      color: Colors.purple,
                    ),
                    title: Text(
                      "Terms and Conditions".tr(),
                      style: CustomTextstyle.getheme.headline2,
                    ),
                  ),
                  Divider(
                    color: CustomAppTheme.grey,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.note_outlined,
                      color: CustomAppTheme.grey,
                    ),
                    title: Text(
                      "Moslahat".tr(),
                      style: CustomTextstyle.getheme.headline2,
                    ),
                  ),
                  Divider(
                    color: CustomAppTheme.grey,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.help_outlined,
                      color: Colors.cyan,
                    ),
                    title: Text(
                      "Help and Technical Support".tr(),
                      style: CustomTextstyle.getheme.headline2,
                    ),
                  ),
                  Divider(
                    color: CustomAppTheme.grey,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.expand,
                      color: CustomAppTheme.red,
                    ),
                    title: Text(
                      "HomePage2".tr(),
                      style: CustomTextstyle.getheme.headline2,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage2(),
                          ));
                    },
                  ),
                  Divider(
                    color: CustomAppTheme.grey,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.expand,
                      color: CustomAppTheme.red,
                    ),
                    title: Text(
                      "HomePage4".tr(),
                      style: CustomTextstyle.getheme.headline2,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage4(),
                          ));
                    },
                  ),
                  Divider(
                    color: CustomAppTheme.grey,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.expand,
                      color: CustomAppTheme.red,
                    ),
                    title: Text(
                      "HomePage5".tr(),
                      style: CustomTextstyle.getheme.headline2,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage5(),
                          ));
                    },
                  ),
                  Divider(
                    color: CustomAppTheme.grey,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.expand,
                      color: CustomAppTheme.red,
                    ),
                    title: Text(
                      "RacePage2".tr(),
                      style: CustomTextstyle.getheme.headline2,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RacePage2(),
                          ));
                    },
                  ),
                  Divider(
                    color: CustomAppTheme.grey,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.expand,
                      color: CustomAppTheme.red,
                    ),
                    title: Text(
                      "RacePage3".tr(),
                      style: CustomTextstyle.getheme.headline2,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RacePage3(),
                          ));
                    },
                  ),
                  Divider(
                    color: CustomAppTheme.grey,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.expand,
                      color: CustomAppTheme.red,
                    ),
                    title: Text(
                      "RacePage4".tr(),
                      style: CustomTextstyle.getheme.headline2,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RacePage4(),
                          ));
                    },
                  ),
                  Divider(
                    color: CustomAppTheme.grey,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.expand,
                      color: CustomAppTheme.red,
                    ),
                    title: Text(
                      "Profile1".tr(),
                      style: CustomTextstyle.getheme.headline2,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Profile1(),
                          ));
                    },
                  ),
                  Divider(
                    color: CustomAppTheme.grey,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
