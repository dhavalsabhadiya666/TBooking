import 'package:doos/constant/constant.dart';
import 'package:doos/constant/custom_app_theme.dart';
import 'package:doos/constant/custom_textstyle.dart';
import 'package:doos/constant/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class RacePage3 extends StatefulWidget {
  const RacePage3({Key? key}) : super(key: key);

  @override
  _RacePage3State createState() => _RacePage3State();
}

class _RacePage3State extends State<RacePage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
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
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    height: AppConstants.displayHeight(context) / 1.8,
                    width: AppConstants.displayWidth(context),
                    decoration: BoxDecoration(
                      color: CustomAppTheme.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Race results'.tr(),
                          style: CustomTextstyle.getheme.subtitle2,
                        )
                      ],
                    ),
                  ),

                  ///center column container
                  Positioned(
                    left: AppConstants.displayWidth(context) / 3.2,
                    right: AppConstants.displayWidth(context) / 3.2,
                    top: AppConstants.displayHeight(context) / 10,
                    child: Column(
                      children: [
                        Container(
                          height: AppConstants.displayHeight(context) / 6,
                          width: AppConstants.displayWidth(context) / 3.5,
                          padding: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            color: CustomAppTheme.white,
                            boxShadow: [
                              BoxShadow(
                                  color: CustomAppTheme.grey.withOpacity(0.4),
                                  blurRadius: 10)
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    AssetImage(AllImages.mainavtar),
                                backgroundColor: CustomAppTheme.white,
                              ),
                              Text(
                                "King".tr(),
                                style: CustomTextstyle.getheme.subtitle2,
                              ),
                              Text(
                                "00:34.01",
                                style: CustomTextstyle.getheme.headline3,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: AppConstants.displayHeight(context) / 10,
                        ),
                        Container(
                          height: AppConstants.displayHeight(context) / 7.5,
                          width: AppConstants.displayWidth(context) / 3.5,
                          padding: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            color: CustomAppTheme.white,
                            boxShadow: [
                              BoxShadow(
                                  color: CustomAppTheme.grey.withOpacity(0.4),
                                  blurRadius: 10)
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage:
                                    AssetImage(AllImages.mainavtar),
                                backgroundColor: CustomAppTheme.white,
                              ),
                              Text(
                                "King".tr(),
                                style: CustomTextstyle.getheme.subtitle2,
                              ),
                              Text(
                                "00:34.01",
                                style: CustomTextstyle.getheme.headline3,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: AppConstants.displayWidth(context) / 3.2,
                    right: AppConstants.displayWidth(context) / 3.2,
                    top: AppConstants.displayHeight(context) / 13,
                    child: Column(
                      children: [
                        Container(
                          height: AppConstants.displayHeight(context) / 30,
                          width: AppConstants.displayWidth(context) / 8,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              '#1',
                              style: CustomTextstyle.getheme.bodyText2,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: AppConstants.displayHeight(context) / 4.15,
                        ),
                        Container(
                          height: AppConstants.displayHeight(context) / 36,
                          width: AppConstants.displayWidth(context) / 10,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              '#5',
                              style: CustomTextstyle.getheme.bodyText2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  ///left position container
                  Positioned(
                    left: AppConstants.displayWidth(context) / 30,
                    right: AppConstants.displayWidth(context) / 1.7,
                    top: AppConstants.displayHeight(context) / 7,
                    child: Column(
                      children: [
                        Container(
                          height: AppConstants.displayHeight(context) / 7,
                          width: AppConstants.displayWidth(context) / 4.5,
                          padding: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            color: CustomAppTheme.white,
                            boxShadow: [
                              BoxShadow(
                                  color: CustomAppTheme.grey.withOpacity(0.4),
                                  blurRadius: 10)
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 22,
                                backgroundImage:
                                    AssetImage(AllImages.mainavtar),
                                backgroundColor: CustomAppTheme.white,
                              ),
                              Text(
                                "King".tr(),
                                style: CustomTextstyle.getheme.subtitle2,
                              ),
                              Text(
                                "00:34.01",
                                style: CustomTextstyle.getheme.headline3,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: AppConstants.displayHeight(context) / 30,
                        ),
                        Container(
                          height: AppConstants.displayHeight(context) / 7.3,
                          width: AppConstants.displayWidth(context) / 4.5,
                          padding: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            color: CustomAppTheme.white,
                            boxShadow: [
                              BoxShadow(
                                  color: CustomAppTheme.grey.withOpacity(0.4),
                                  blurRadius: 10)
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage:
                                    AssetImage(AllImages.mainavtar),
                                backgroundColor: CustomAppTheme.white,
                              ),
                              Text(
                                "King".tr(),
                                style: CustomTextstyle.getheme.subtitle2,
                              ),
                              Text(
                                "00:34.01",
                                style: CustomTextstyle.getheme.headline3,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: AppConstants.displayWidth(context) / 30,
                    right: AppConstants.displayWidth(context) / 1.7,
                    top: AppConstants.displayHeight(context) / 7.9,
                    child: Column(
                      children: [
                        Container(
                          height: AppConstants.displayHeight(context) / 36,
                          width: AppConstants.displayWidth(context) / 10,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              '#3',
                              style: CustomTextstyle.getheme.bodyText2,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: AppConstants.displayHeight(context) / 6.6,
                        ),
                        Container(
                          height: AppConstants.displayHeight(context) / 36,
                          width: AppConstants.displayWidth(context) / 10,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              '#6',
                              style: CustomTextstyle.getheme.bodyText2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  ///right position container
                  Positioned(
                    right: AppConstants.displayWidth(context) / 30,
                    left: AppConstants.displayWidth(context) / 1.7,
                    top: AppConstants.displayHeight(context) / 7,
                    child: Column(
                      children: [
                        Container(
                          height: AppConstants.displayHeight(context) / 7,
                          width: AppConstants.displayWidth(context) / 4.5,
                          padding: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            color: CustomAppTheme.white,
                            boxShadow: [
                              BoxShadow(
                                  color: CustomAppTheme.grey.withOpacity(0.4),
                                  blurRadius: 10)
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 22,
                                backgroundImage:
                                    AssetImage(AllImages.mainavtar),
                                backgroundColor: CustomAppTheme.white,
                              ),
                              Text(
                                "King".tr(),
                                style: CustomTextstyle.getheme.subtitle2,
                              ),
                              Text(
                                "00:34.01",
                                style: CustomTextstyle.getheme.headline3,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: AppConstants.displayHeight(context) / 30,
                        ),
                        Container(
                          height: AppConstants.displayHeight(context) / 7,
                          width: AppConstants.displayWidth(context) / 4.5,
                          padding: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            color: CustomAppTheme.white,
                            boxShadow: [
                              BoxShadow(
                                  color: CustomAppTheme.grey.withOpacity(0.4),
                                  blurRadius: 10)
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage:
                                    AssetImage(AllImages.mainavtar),
                                backgroundColor: CustomAppTheme.white,
                              ),
                              Text(
                                "King".tr(),
                                style: CustomTextstyle.getheme.subtitle2,
                              ),
                              Text(
                                "00:34.01",
                                style: CustomTextstyle.getheme.headline3,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: AppConstants.displayWidth(context) / 30,
                    left: AppConstants.displayWidth(context) / 1.7,
                    top: AppConstants.displayHeight(context) / 8,
                    child: Column(
                      children: [
                        Container(
                          height: AppConstants.displayHeight(context) / 36,
                          width: AppConstants.displayWidth(context) / 10,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              '#2',
                              style: CustomTextstyle.getheme.bodyText2,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: AppConstants.displayHeight(context) / 6.6,
                        ),
                        Container(
                          height: AppConstants.displayHeight(context) / 36,
                          width: AppConstants.displayWidth(context) / 10,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              '#4',
                              style: CustomTextstyle.getheme.bodyText2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              ///button and share icon
              SizedBox(
                height: AppConstants.displayHeight(context) / 20,
              ),
              Icon(
                Icons.share,
                color: CustomAppTheme.white,
                size: 30,
              ),
              SizedBox(
                height: AppConstants.displayHeight(context) / 40,
              ),
              Container(
                height: AppConstants.displayHeight(context) / 18,
                width: AppConstants.displayWidth(context) / 3,
                decoration: BoxDecoration(
                  color: CustomAppTheme.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.check,
                  color: CustomAppTheme.white,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: CustomAppTheme.blue,
    );
  }
}
