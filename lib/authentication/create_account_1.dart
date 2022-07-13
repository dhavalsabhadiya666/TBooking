import 'package:doos/authentication/create_account_2.dart';
import 'package:doos/constant/constant.dart';
import 'package:doos/constant/custom_app_theme.dart';
import 'package:doos/constant/custom_textstyle.dart';
import 'package:doos/constant/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class CreateAccount1 extends StatefulWidget {
  @override
  _CreateAccount1State createState() => _CreateAccount1State();
}

class _CreateAccount1State extends State<CreateAccount1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomAppTheme.white,
      body: Stack(
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
                  Icon(
                    Icons.close_outlined,
                    size: 25,
                    color: CustomAppTheme.grey,
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
                        hintText: 'The name'.tr(),
                        hintStyle: CustomTextstyle.getheme.headline4,
                        prefixIcon: Image(
                          image: AssetImage(AllImages.usericon),
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
                        hintText: 'E-mail'.tr(),
                        hintStyle: CustomTextstyle.getheme.headline4,
                        prefixIcon: Image(
                          image: AssetImage(AllImages.lockicon),
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
                        hintText: 'Country'.tr(),
                        hintStyle: CustomTextstyle.getheme.headline4,
                        prefixIcon: Image(
                          image: AssetImage(AllImages.countryicon),
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
                        hintText: 'password'.tr(),
                        hintStyle: CustomTextstyle.getheme.headline4,
                        prefixIcon: Image(
                          image: AssetImage(AllImages.lockicon),
                        ),
                        /* Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FlutterSwitch(
                              width: AppConstants.displayWidth(context) / 8,
                              height:
                              AppConstants.displayHeight(context) / 28,
                              toggleSize:
                              AppConstants.displayHeight(context) / 29,
                              value: isSwitchOn,
                              // borderRadius: 30.0,
                              padding: 0,
                              activeToggleColor: Color(0xFF6E40C9),
                              inactiveToggleColor: Color(0xFF2F363D),
                              activeSwitchBorder: Border.all(
                                color: Color(0xFF3C1E70),
                                // width: 6.0,
                              ),
                              inactiveSwitchBorder: Border.all(
                                color: Color(0xFFD1D5DA),
                                // width: 6.0,
                              ),
                              activeColor: Color(0xFF271052),
                              inactiveColor: Colors.white,
                              activeIcon: Icon(
                                Icons.close,
                                color: Color(0xFFF8E3A1),
                              ),
                              inactiveIcon: Icon(
                                Icons.check,
                                color: Color(0xFFFFDF5D),
                              ),
                              onToggle: (val) {
                                setState(() {
                                  isSwitchOn = val;

                                  if (val) {
                                    _textColor = Colors.white;
                                    _appBarColor =
                                        Color.fromRGBO(22, 27, 34, 1);
                                    _scaffoldBgcolor = Color(0xFF0D1117);
                                  } else {
                                    _textColor = Colors.black;
                                    _appBarColor =
                                        Color.fromRGBO(36, 41, 46, 1);
                                    _scaffoldBgcolor = Colors.white;
                                  }
                                });
                              },
                            ),
                          ],
                        ),*/
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
                    height: AppConstants.displayHeight(context) / 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CreateAccount2(),
                            ),
                          );
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
                    height: AppConstants.displayHeight(context) / 10,
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
    );
  }
}
