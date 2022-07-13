import 'package:doos/constant/constant.dart';
import 'package:doos/constant/custom_app_theme.dart';
import 'package:doos/constant/custom_textstyle.dart';
import 'package:doos/screens/race_page_1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class RacePage extends StatefulWidget {
  @override
  _RacePageState createState() => _RacePageState();
}

class _RacePageState extends State<RacePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: AppConstants.displayHeight(context) / 1.9,
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
                            height: AppConstants.displayHeight(context) / 9,
                          ),
                          SvgPicture.asset('assets/images/racer_no..svg'),
                        ],
                      ),
                    ),
                  ),

                  /// 1 number winner
                  Positioned(
                    left: 0,
                    right: 0,
                    top: AppConstants.displayHeight(context) / 14,
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                        ),
                        SizedBox(
                          height: AppConstants.displayHeight(context) / 5,
                        ),
                        Text(
                          'Sultan'.tr(),
                          style: CustomTextstyle.getheme.bodyText2,
                        ),
                        Text(
                          '00:30.01',
                          style: CustomTextstyle.getheme.bodyText2,
                        ),
                      ],
                    ),
                  ),

                  /// 2 number winner
                  Positioned(
                    left: AppConstants.displayWidth(context) / 15,
                    top: AppConstants.displayHeight(context) / 7.5,
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          radius: 22,
                        ),
                        SizedBox(
                          height: AppConstants.displayHeight(context) / 5.2,
                        ),
                        Text(
                          'Mohammed'.tr(),
                          style: CustomTextstyle.getheme.bodyText2,
                        ),
                        Text(
                          '00:30.01',
                          style: CustomTextstyle.getheme.bodyText2,
                        ),
                      ],
                    ),
                  ),

                  ///3 number winner
                  Positioned(
                    right: AppConstants.displayWidth(context) / 8,
                    top: AppConstants.displayHeight(context) / 6.5,
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 22,
                        ),
                        SizedBox(
                          height: AppConstants.displayHeight(context) / 5.5,
                        ),
                        Text(
                          'Ahmad'.tr(),
                          style: CustomTextstyle.getheme.bodyText2,
                        ),
                        Text(
                          '00:30.01',
                          style: CustomTextstyle.getheme.bodyText2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: AppConstants.displayHeight(context) / 1.5,
                width: AppConstants.displayWidth(context),
                color: CustomAppTheme.white,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RacePage1(),
                                  ),
                                );
                              },
                              child: Container(
                                height: AppConstants.displayHeight(context) / 6,
                                width: AppConstants.displayWidth(context),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          color: CustomAppTheme.grey
                                              .withOpacity(0.4),
                                          blurRadius: 10)
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 40, left: 20, right: 20),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Date'.tr(),
                                            style:
                                                CustomTextstyle.getheme.button,
                                          ),
                                          SizedBox(
                                            width: AppConstants.displayWidth(
                                                    context) /
                                                40,
                                          ),
                                          Text(
                                            ':01/12/2021 ',
                                            style:
                                                CustomTextstyle.getheme.button,
                                          ),
                                          SizedBox(
                                            width: AppConstants.displayWidth(
                                                    context) /
                                                16,
                                          ),
                                          Text(
                                            'the time'.tr(),
                                            style:
                                                CustomTextstyle.getheme.button,
                                          ),
                                          SizedBox(
                                            width: AppConstants.displayWidth(
                                                    context) /
                                                30,
                                          ),
                                          Text(
                                            '3:00',
                                            style:
                                                CustomTextstyle.getheme.button,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: AppConstants.size10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'best timing'.tr(),
                                            style:
                                                CustomTextstyle.getheme.button,
                                          ),
                                          SizedBox(
                                            width: AppConstants.displayWidth(
                                                    context) /
                                                40,
                                          ),
                                          Text(
                                            '00:30.01',
                                            style:
                                                CustomTextstyle.getheme.button,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          // SizedBox(
                                          //   width: AppConstants.displayWidth(
                                          //           context) /
                                          //       16,
                                          // ),
                                          Text(
                                            'cycle number'.tr(),
                                            style:
                                                CustomTextstyle.getheme.button,
                                          ),
                                          SizedBox(
                                            width: AppConstants.displayWidth(
                                                    context) /
                                                40,
                                          ),
                                          Text(
                                            '5',
                                            style:
                                                CustomTextstyle.getheme.button,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: AppConstants.displayHeight(context) / 24,
                              width: AppConstants.displayWidth(context) / 4,
                              decoration: BoxDecoration(
                                color: CustomAppTheme.DarkOrange,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  '3:00',
                                  style: CustomTextstyle.getheme.bodyText2,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: AppConstants.size20,
                        ),
                        Stack(
                          // ignore: deprecated_member_use
                          overflow: Overflow.visible,
                          children: [
                            Container(
                              height: AppConstants.displayHeight(context) / 10,
                              width: AppConstants.displayWidth(context),
                              decoration: BoxDecoration(
                                color: CustomAppTheme.white,
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
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                    ),
                                    SizedBox(
                                      width:
                                          AppConstants.displayWidth(context) /
                                              30,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'King'.tr(),
                                          style: CustomTextstyle.getheme.button,
                                        ),
                                        Text(
                                          '00:30.01',
                                          style: CustomTextstyle.getheme.button,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width:
                                          AppConstants.displayWidth(context) /
                                              30,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Course'.tr(),
                                          style: CustomTextstyle.getheme.button,
                                        ),
                                        Text(
                                          '5',
                                          style: CustomTextstyle.getheme.button,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width:
                                          AppConstants.displayWidth(context) /
                                              30,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'delay'.tr(),
                                          style: CustomTextstyle.getheme.button,
                                        ),
                                        Text(
                                          '00:01.02+',
                                          style: CustomTextstyle.getheme.button,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              right: AppConstants.displayWidth(context) / -20,
                              top: AppConstants.displayHeight(context) / 30,
                              child: Container(
                                // margin: EdgeInsets.only(left: 100),
                                height:
                                    AppConstants.displayHeight(context) / 30,
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
                          height: AppConstants.size20,
                        ),
                        Stack(
                          overflow: Overflow.visible,
                          children: [
                            Container(
                              height: AppConstants.displayHeight(context) / 10,
                              width: AppConstants.displayWidth(context),
                              decoration: BoxDecoration(
                                color: CustomAppTheme.white,
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
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                    ),
                                    SizedBox(
                                      width:
                                          AppConstants.displayWidth(context) /
                                              30,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'King'.tr(),
                                          style: CustomTextstyle.getheme.button,
                                        ),
                                        Text(
                                          '00:30.01',
                                          style: CustomTextstyle.getheme.button,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width:
                                          AppConstants.displayWidth(context) /
                                              30,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Course'.tr(),
                                          style: CustomTextstyle.getheme.button,
                                        ),
                                        Text(
                                          '5',
                                          style: CustomTextstyle.getheme.button,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width:
                                          AppConstants.displayWidth(context) /
                                              30,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'delay'.tr(),
                                          style: CustomTextstyle.getheme.button,
                                        ),
                                        Text(
                                          '00:01.02+',
                                          style: CustomTextstyle.getheme.button,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              right: AppConstants.displayWidth(context) / -20,
                              top: AppConstants.displayHeight(context) / 30,
                              child: Container(
                                // margin: EdgeInsets.only(left: 100),
                                height:
                                    AppConstants.displayHeight(context) / 30,
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
                          height: AppConstants.size20,
                        ),
                        Stack(
                          overflow: Overflow.visible,
                          children: [
                            Container(
                              height: AppConstants.displayHeight(context) / 10,
                              width: AppConstants.displayWidth(context),
                              decoration: BoxDecoration(
                                color: CustomAppTheme.white,
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
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                    ),
                                    SizedBox(
                                      width:
                                          AppConstants.displayWidth(context) /
                                              30,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'King'.tr(),
                                          style: CustomTextstyle.getheme.button,
                                        ),
                                        Text(
                                          '00:30.01',
                                          style: CustomTextstyle.getheme.button,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width:
                                          AppConstants.displayWidth(context) /
                                              30,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Course'.tr(),
                                          style: CustomTextstyle.getheme.button,
                                        ),
                                        Text(
                                          '5',
                                          style: CustomTextstyle.getheme.button,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width:
                                          AppConstants.displayWidth(context) /
                                              30,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'delay'.tr(),
                                          style: CustomTextstyle.getheme.button,
                                        ),
                                        Text(
                                          '00:01.02+',
                                          style: CustomTextstyle.getheme.button,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              right: AppConstants.displayWidth(context) / -20,
                              top: AppConstants.displayHeight(context) / 30,
                              child: Container(
                                // margin: EdgeInsets.only(left: 100),
                                height:
                                    AppConstants.displayHeight(context) / 30,
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
                      ],
                    ),
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
