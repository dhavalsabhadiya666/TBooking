import 'dart:async';

import 'package:doos/authentication/loading_page_login.dart';
import 'package:doos/constant/constant.dart';
import 'package:doos/constant/images.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      Duration(milliseconds: 2500),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoadingPageLogin(),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            height: AppConstants.displayHeight(context),
            width: AppConstants.displayWidth(context),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AllImages.splashimage),
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Container(
              height: AppConstants.displayHeight(context),
              width: AppConstants.displayWidth(context),
              color: Color(0xff263D89).withOpacity(0.8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: AppConstants.displayHeight(context) / 7,
                    width: AppConstants.displayWidth(context) / 2,
                    // color: Colors.white,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AllImages.dooslogo),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: AppConstants.displayHeight(context) / 16,
            left: AppConstants.displayWidth(context) / 2.9,
            right: AppConstants.displayWidth(context) / 2.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: AppConstants.displayHeight(context) / 10,
                  decoration: BoxDecoration(
                    // color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage(AllImages.doosbottomlogo),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
