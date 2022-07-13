import 'package:doos/constant/constant.dart';
import 'package:doos/constant/custom_app_theme.dart';
import 'package:doos/constant/custom_textstyle.dart';
import 'package:doos/screens/invoice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

import 'invoice_1.dart';

class RacePage1 extends StatefulWidget {
  @override
  _RacePage1State createState() => _RacePage1State();
}

class _RacePage1State extends State<RacePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: AppConstants.displayHeight(context) / 2.2,
                width: AppConstants.displayWidth(context),
                color: CustomAppTheme.blue,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.share,
                            color: CustomAppTheme.white,
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_forward,
                              color: CustomAppTheme.white,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: AppConstants.displayHeight(context) / 14,
                      ),
                      SvgPicture.asset('assets/images/doos_chart.svg'),
                      SizedBox(
                        height: AppConstants.displayHeight(context) / 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: AppConstants.size40,
                          ),
                          Text(
                            '#1',
                            style: CustomTextstyle.getheme.bodyText2,
                          ),
                          Text(
                            '#1',
                            style: CustomTextstyle.getheme.bodyText2,
                          ),
                          Text(
                            '#1',
                            style: CustomTextstyle.getheme.bodyText2,
                          ),
                          Text(
                            '#1',
                            style: CustomTextstyle.getheme.bodyText2,
                          ),
                          Text(
                            '#1',
                            style: CustomTextstyle.getheme.bodyText2,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: AppConstants.displayHeight(context) / 1.5,
                width: AppConstants.displayWidth(context),
                color: CustomAppTheme.white,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                  child: Column(
                    children: [
                      Stack(
                        overflow: Overflow.visible,
                        children: [
                          GestureDetector(
                            child: Container(
                              height: AppConstants.displayHeight(context) / 14,
                              width: AppConstants.displayWidth(context),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: CustomAppTheme.blue,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color:
                                          CustomAppTheme.grey.withOpacity(0.3),
                                      blurRadius: 10)
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Text(
                                  '00:30.01',
                                  style: CustomTextstyle.getheme.bodyText2,
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Invoice1(),
                                ),
                              );
                            },
                          ),
                          Positioned(
                            left: AppConstants.displayWidth(context) / -30,
                            top: AppConstants.displayHeight(context) / 50,
                            child: Container(
                              // margin: EdgeInsets.only(left: 100),
                              height: AppConstants.displayHeight(context) / 30,
                              width: AppConstants.displayWidth(context) / 8,
                              decoration: BoxDecoration(
                                color: CustomAppTheme.DarkOrange,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  '#1',
                                  style: CustomTextstyle.getheme.bodyText2,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: AppConstants.size10,
                      ),
                      Stack(
                        overflow: Overflow.visible,
                        children: [
                          Container(
                            height: AppConstants.displayHeight(context) / 14,
                            width: AppConstants.displayWidth(context),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: CustomAppTheme.red,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: CustomAppTheme.grey.withOpacity(0.3),
                                    blurRadius: 10)
                              ],
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                '00:30.01',
                                style: CustomTextstyle.getheme.bodyText2,
                              ),
                            ),
                          ),
                          Positioned(
                            left: AppConstants.displayWidth(context) / -30,
                            top: AppConstants.displayHeight(context) / 50,
                            child: Container(
                              // margin: EdgeInsets.only(left: 100),
                              height: AppConstants.displayHeight(context) / 30,
                              width: AppConstants.displayWidth(context) / 8,
                              decoration: BoxDecoration(
                                color: CustomAppTheme.DarkOrange,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  '#2',
                                  style: CustomTextstyle.getheme.bodyText2,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: AppConstants.size10,
                      ),
                      Stack(
                        overflow: Overflow.visible,
                        children: [
                          Container(
                            height: AppConstants.displayHeight(context) / 14,
                            width: AppConstants.displayWidth(context),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: CustomAppTheme.grey,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: CustomAppTheme.grey.withOpacity(0.3),
                                    blurRadius: 10)
                              ],
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                '00:30.01',
                                style: CustomTextstyle.getheme.bodyText2,
                              ),
                            ),
                          ),
                          Positioned(
                            left: AppConstants.displayWidth(context) / -30,
                            top: AppConstants.displayHeight(context) / 50,
                            child: Container(
                              // margin: EdgeInsets.only(left: 100),
                              height: AppConstants.displayHeight(context) / 30,
                              width: AppConstants.displayWidth(context) / 8,
                              decoration: BoxDecoration(
                                color: CustomAppTheme.DarkOrange,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  '#3',
                                  style: CustomTextstyle.getheme.bodyText2,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: AppConstants.size10,
                      ),
                      Stack(
                        overflow: Overflow.visible,
                        children: [
                          Container(
                            height: AppConstants.displayHeight(context) / 14,
                            width: AppConstants.displayWidth(context),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: CustomAppTheme.grey,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: CustomAppTheme.grey.withOpacity(0.3),
                                    blurRadius: 10)
                              ],
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                '00:30.01',
                                style: CustomTextstyle.getheme.bodyText2,
                              ),
                            ),
                          ),
                          Positioned(
                            left: AppConstants.displayWidth(context) / -30,
                            top: AppConstants.displayHeight(context) / 50,
                            child: Container(
                              // margin: EdgeInsets.only(left: 100),
                              height: AppConstants.displayHeight(context) / 30,
                              width: AppConstants.displayWidth(context) / 8,
                              decoration: BoxDecoration(
                                color: CustomAppTheme.DarkOrange,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  '#4',
                                  style: CustomTextstyle.getheme.bodyText2,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: AppConstants.size10,
                      ),
                      Stack(
                        overflow: Overflow.visible,
                        children: [
                          Container(
                            height: AppConstants.displayHeight(context) / 14,
                            width: AppConstants.displayWidth(context),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: CustomAppTheme.red,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: CustomAppTheme.grey.withOpacity(0.3),
                                    blurRadius: 10)
                              ],
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                '00:30.01',
                                style: CustomTextstyle.getheme.bodyText2,
                              ),
                            ),
                          ),
                          Positioned(
                            left: AppConstants.displayWidth(context) / -30,
                            top: AppConstants.displayHeight(context) / 50,
                            child: Container(
                              // margin: EdgeInsets.only(left: 100),
                              height: AppConstants.displayHeight(context) / 30,
                              width: AppConstants.displayWidth(context) / 8,
                              decoration: BoxDecoration(
                                color: CustomAppTheme.DarkOrange,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  '#5',
                                  style: CustomTextstyle.getheme.bodyText2,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
