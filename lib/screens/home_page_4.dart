import 'package:doos/constant/constant.dart';
import 'package:doos/constant/custom_app_theme.dart';
import 'package:doos/constant/custom_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class HomePage4 extends StatefulWidget {
  const HomePage4({Key? key}) : super(key: key);

  @override
  _HomePage4State createState() => _HomePage4State();
}

class _HomePage4State extends State<HomePage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomAppTheme.blue,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(
                  Icons.arrow_forward,
                  color: CustomAppTheme.grey,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              height: AppConstants.displayHeight(context) / 1.3,
              width: AppConstants.displayWidth(context),
              decoration: BoxDecoration(
                color: CustomAppTheme.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Contestant number".tr(),
                        style: CustomTextstyle.getheme.bodyText1,
                      ),
                      Row(
                        children: [
                          Text(
                            "Age".tr(),
                            style: CustomTextstyle.getheme.bodyText1,
                          ),
                          Text(
                            "From 7-10 years old is considered a cubs".tr(),
                            style: TextStyle(
                                color: CustomAppTheme.grey, fontSize: 12),
                          ),
                        ],
                      ),
                      Divider(
                        color: CustomAppTheme.grey,
                      ),
                      Text(
                        "players names".tr(),
                        style: CustomTextstyle.getheme.bodyText1,
                      ),
                      Row(
                        children: [
                          Text(
                            "King".tr(),
                            style: CustomTextstyle.getheme.bodyText1,
                          ),
                          Spacer(),
                          Icon(
                            Icons.close,
                            color: CustomAppTheme.red,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Mohammed".tr(),
                            style: CustomTextstyle.getheme.bodyText1,
                          ),
                          Spacer(),
                          Icon(
                            Icons.close,
                            color: CustomAppTheme.red,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Ahmad".tr(),
                            style: CustomTextstyle.getheme.bodyText1,
                          ),
                          Spacer(),
                          Icon(
                            Icons.close,
                            color: CustomAppTheme.red,
                          ),
                        ],
                      ),
                      Divider(
                        color: CustomAppTheme.grey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: AppConstants.displayHeight(context) / 15,
                            width: AppConstants.displayWidth(context) / 3.5,
                            decoration: BoxDecoration(
                                color: CustomAppTheme.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color:
                                          CustomAppTheme.grey.withOpacity(0.2),
                                      blurRadius: 5)
                                ]),
                            child: Center(
                              child: Text(
                                "Payment through Apple Pay".tr(),
                                style: TextStyle(
                                    fontSize: 10, color: CustomAppTheme.grey),
                              ),
                            ),
                          ),
                          Container(
                            height: AppConstants.displayHeight(context) / 15,
                            width: AppConstants.displayWidth(context) / 3.5,
                            decoration: BoxDecoration(
                                color: CustomAppTheme.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color:
                                          CustomAppTheme.grey.withOpacity(0.2),
                                      blurRadius: 5)
                                ]),
                            child: Center(
                              child: Text(
                                "Payment through Apple Pay".tr(),
                                style: TextStyle(
                                    fontSize: 10, color: CustomAppTheme.grey),
                              ),
                            ),
                          ),
                          Container(
                            height: AppConstants.displayHeight(context) / 15,
                            width: AppConstants.displayWidth(context) / 6,
                            decoration: BoxDecoration(
                                color: Color(0xff3EE05D),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color:
                                          CustomAppTheme.grey.withOpacity(0.2),
                                      blurRadius: 5)
                                ]),
                            child: Center(
                                child: Icon(
                              Icons.add,
                              color: CustomAppTheme.white,
                            )),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        margin: EdgeInsets.symmetric(vertical: 10),
                        height: AppConstants.displayHeight(context) / 15,
                        width: AppConstants.displayWidth(context),
                        decoration: BoxDecoration(
                            color: Color(0xff3EE05D),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: CustomAppTheme.grey.withOpacity(0.2),
                                  blurRadius: 5)
                            ]),
                        child: Row(
                          children: [
                            Text(
                              "Add a new contestant".tr(),
                              style: TextStyle(
                                  fontSize: 10, color: CustomAppTheme.grey),
                            ),
                            Spacer(),
                            Icon(
                              Icons.add,
                              color: CustomAppTheme.white,
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: CustomAppTheme.grey,
                      ),
                      Row(
                        children: [
                          Text(
                            "Total players".tr(),
                            style: CustomTextstyle.getheme.bodyText1,
                          ),
                          Spacer(),
                          Text(
                            "Age".tr(),
                            style: CustomTextstyle.getheme.bodyText1,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "٣ Labs".tr(),
                            style: CustomTextstyle.getheme.headline2,
                          ),
                          Spacer(),
                          Text(
                            "بالغ".tr(),
                            style: CustomTextstyle.getheme.headline2,
                          ),
                        ],
                      ),
                      Divider(
                        color: CustomAppTheme.grey,
                      ),
                      Text(
                        "٣٣٠ SR".tr(),
                        style: TextStyle(
                            color: CustomAppTheme.red,
                            fontSize: 33,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Including added value".tr(),
                        style: CustomTextstyle.getheme.headline2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: AppConstants.displayHeight(context) / 15,
                            width: AppConstants.displayWidth(context) / 2,
                            decoration: BoxDecoration(
                                color: CustomAppTheme.blue,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color:
                                          CustomAppTheme.grey.withOpacity(0.2),
                                      blurRadius: 5)
                                ]),
                            child: Center(
                              child: Text(
                                "Payment through Apple Pay".tr(),
                                style: TextStyle(
                                    fontSize: 10, color: CustomAppTheme.white),
                              ),
                            ),
                          ),
                          Container(
                            height: AppConstants.displayHeight(context) / 15,
                            width: AppConstants.displayWidth(context) / 4,
                            decoration: BoxDecoration(
                                color: CustomAppTheme.red,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color:
                                          CustomAppTheme.grey.withOpacity(0.2),
                                      blurRadius: 5)
                                ]),
                            child: Center(
                              child: Text(
                                "Payment through Apple Pay".tr(),
                                style: TextStyle(
                                    fontSize: 10, color: CustomAppTheme.white),
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
    );
  }
}
