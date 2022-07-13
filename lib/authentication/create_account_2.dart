import 'package:doos/bottomnavigationbar/bottom_navigation.dart';
import 'package:doos/constant/constant.dart';
import 'package:doos/constant/custom_app_theme.dart';
import 'package:doos/constant/custom_textstyle.dart';
import 'package:doos/constant/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class CreateAccount2 extends StatefulWidget {
  @override
  _CreateAccount2State createState() => _CreateAccount2State();
}

class _CreateAccount2State extends State<CreateAccount2> {
  bool isSwitchOn = false;

  Color _textColor = Colors.black;
  Color _appBarColor = Color.fromRGBO(36, 41, 46, 1);
  Color _scaffoldBgcolor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomAppTheme.white,
      body: SingleChildScrollView(
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Container(
              height: AppConstants.displayHeight(context) / 1.15,
              width: AppConstants.displayWidth(context),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30),
                  ),
                  color: CustomAppTheme.white,
                  boxShadow: [
                    BoxShadow(
                        color: CustomAppTheme.grey.withOpacity(0.3),
                        blurRadius: 10,
                        offset: Offset(0, 8))
                  ]),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: AppConstants.displayHeight(context) / 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Icon(
                        Icons.close_outlined,
                        size: 25,
                        color: CustomAppTheme.grey,
                      ),
                    ),
                    SizedBox(
                      height: AppConstants.displayHeight(context) / 15,
                    ),

                    ///create account
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        'Create an account'.tr(),
                        style: CustomTextstyle.getheme.subtitle2,
                      ),
                    ),
                    SizedBox(
                      height: AppConstants.displayHeight(context) / 20,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          color: CustomAppTheme.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: CustomAppTheme.grey.withOpacity(0.2),
                                offset: Offset(0, 6),
                                blurRadius: 9,
                                spreadRadius: 3),
                          ]),
                      child: TextFormField(
                        // controller: _username,
                        validator: (input) {
                          if (input!.isEmpty) {
                            return 'Enter username';
                          }
                        },
                        keyboardType: TextInputType.name,
                        style: TextStyle(
                          color: Color(0xff212121),
                        ),
                        cursorColor: Colors.black,
                        cursorHeight: 20,
                        decoration: InputDecoration(
                          hintText: 'Date of Birth'.tr(),
                          hintStyle: CustomTextstyle.getheme.headline4,
                          prefixIcon: Image(
                            image: AssetImage(AllImages.dobicon),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 20),
                          // filled: true,0
                          // border: InputBorder.none,
                          // fillColor: Colors.grey.withOpacity(0.05),
                          focusColor: Colors.grey.withOpacity(0.05),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.grey.withOpacity(0.05),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color(0xff37966f).withOpacity(0.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: AppConstants.displayHeight(context) / 30,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          color: CustomAppTheme.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: CustomAppTheme.grey.withOpacity(0.2),
                                offset: Offset(0, 6),
                                blurRadius: 9,
                                spreadRadius: 3),
                          ]),
                      child: TextFormField(
                        // controller: _username,
                        validator: (input) {
                          if (input!.isEmpty) {
                            return 'Enter username';
                          }
                        },
                        keyboardType: TextInputType.name,
                        style: TextStyle(
                          color: Color(0xff212121),
                        ),
                        cursorColor: Colors.black,
                        cursorHeight: 20,
                        decoration: InputDecoration(
                          hintText: 'Nationality'.tr(),
                          hintStyle: CustomTextstyle.getheme.headline4,
                          prefixIcon: Image(
                            image: AssetImage(AllImages.nationalityicon),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 20),
                          // filled: true,
                          // border: InputBorder.none,
                          // fillColor: Colors.grey.withOpacity(0.05),
                          focusColor: Colors.grey.withOpacity(0.05),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.grey.withOpacity(0.05),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color(0xff37966f).withOpacity(0.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: AppConstants.displayHeight(context) / 30,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          color: CustomAppTheme.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: CustomAppTheme.grey.withOpacity(0.2),
                                offset: Offset(0, 6),
                                blurRadius: 9,
                                spreadRadius: 3),
                          ]),
                      child: TextFormField(
                        // controller: _username,
                        validator: (input) {
                          if (input!.isEmpty) {
                            return 'Enter username';
                          }
                        },
                        keyboardType: TextInputType.name,
                        style: TextStyle(
                          color: Color(0xff212121),
                        ),
                        cursorColor: Colors.black,
                        cursorHeight: 20,
                        decoration: InputDecoration(
                          hintText: 'Display picture'.tr(),
                          hintStyle: CustomTextstyle.getheme.headline4,
                          prefixIcon: Image(
                            image: AssetImage(AllImages.cameraicon),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 20),
                          // filled: true,
                          // border: InputBorder.none,
                          // fillColor: Colors.grey.withOpacity(0.05),
                          focusColor: Colors.grey.withOpacity(0.05),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.grey.withOpacity(0.05),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color(0xff37966f).withOpacity(0.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: AppConstants.displayHeight(context) / 30,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          color: CustomAppTheme.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: CustomAppTheme.grey.withOpacity(0.2),
                                offset: Offset(0, 6),
                                blurRadius: 9,
                                spreadRadius: 3),
                          ]),
                      child: TextFormField(
                        // controller: _username,
                        validator: (input) {
                          if (input!.isEmpty) {
                            return 'Enter username';
                          }
                        },
                        keyboardType: TextInputType.name,
                        style: TextStyle(
                          color: Color(0xff212121),
                        ),
                        cursorColor: Colors.black,
                        cursorHeight: 20,
                        decoration: InputDecoration(
                          hintText: 'approval'.tr(),
                          hintStyle: CustomTextstyle.getheme.headline4,
                          prefixIcon: Image(
                            image: AssetImage(AllImages.approvalicon),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 20),
                          // filled: true,
                          // border: InputBorder.none,
                          // fillColor: Colors.grey.withOpacity(0.05),
                          focusColor: Colors.grey.withOpacity(0.05),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.grey.withOpacity(0.05),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color(0xff37966f).withOpacity(0.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: AppConstants.displayHeight(context) / 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        'Terms and Conditions'.tr(),
                        style: CustomTextstyle.getheme.headline5,
                      ),
                    ),
                    SizedBox(
                      height: AppConstants.displayHeight(context) / 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (context) => BottomNavigation()),
                                (Route<dynamic> route) => false);
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            height: AppConstants.displayHeight(context) / 17,
                            width: AppConstants.displayWidth(context) / 3.3,
                            decoration: BoxDecoration(
                              color: CustomAppTheme.blue,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'next one'.tr(),
                                  style: CustomTextstyle.getheme.bodyText2,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 15,
                                  color: CustomAppTheme.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppConstants.displayHeight(context) / 20,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: AppConstants.displayHeight(context) / -12,
              right: 0,
              left: 0,
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  'sign in'.tr(),
                  style: CustomTextstyle.getheme.subtitle1,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
