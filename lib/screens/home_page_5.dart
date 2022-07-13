import 'package:doos/constant/constant.dart';
import 'package:doos/constant/custom_app_theme.dart';
import 'package:doos/constant/custom_textstyle.dart';
import 'package:doos/constant/images.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class HomePage5 extends StatefulWidget {
  const HomePage5({Key? key}) : super(key: key);

  @override
  _HomePage5State createState() => _HomePage5State();
}

class _HomePage5State extends State<HomePage5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(15),
              child: Row(
                children: [
                  Text(
                    "Book your race".tr(),
                    style: CustomTextstyle.getheme.bodyText1,
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.cancel,
                      color: CustomAppTheme.blue,
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: AppConstants.displayHeight(context) / 15,
                  width: AppConstants.displayWidth(context) / 1.5,
                  decoration: BoxDecoration(
                      color: CustomAppTheme.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: CustomAppTheme.grey.withOpacity(0.2),
                            blurRadius: 5)
                      ]),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage(AllImages.pay2),
                      ),
                      Spacer(),
                      Text(
                        "Payment through Apple Pay".tr(),
                        style:
                            TextStyle(fontSize: 10, color: CustomAppTheme.grey),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: AppConstants.displayHeight(context) / 15,
                  width: AppConstants.displayWidth(context) / 1.5,
                  decoration: BoxDecoration(
                      color: CustomAppTheme.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: CustomAppTheme.grey.withOpacity(0.2),
                            blurRadius: 5)
                      ]),
                  child: Row(
                    children: [
                      FittedBox(
                        child: Text(
                          "Change your payment method".tr(),
                          style: TextStyle(
                              color: CustomAppTheme.grey, fontSize: 10),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_drop_down,
                        color: CustomAppTheme.grey,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: AppConstants.displayHeight(context) / 15),
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 50),
              height: AppConstants.displayHeight(context) / 2.3,
              width: AppConstants.displayWidth(context),
              decoration: BoxDecoration(
                color: CustomAppTheme.white,
                boxShadow: [
                  BoxShadow(
                    color: CustomAppTheme.grey.withOpacity(0.2),
                    blurRadius: 5,
                  )
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Reservation information".tr(),
                    style: CustomTextstyle.getheme.headline1,
                  ),
                  Row(
                    children: [
                      Text(
                        "Date".tr(),
                        style: CustomTextstyle.getheme.headline2,
                      ),
                      Text(
                        "10/12/21".tr(),
                        style: CustomTextstyle.getheme.headline2,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Age:".tr(),
                          style: CustomTextstyle.getheme.headline2,
                        ),
                      ),
                      Text(
                        "adults".tr(),
                        style: CustomTextstyle.getheme.headline2,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "the time".tr(),
                        style: CustomTextstyle.getheme.headline2,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "04:00".tr(),
                          style: CustomTextstyle.getheme.headline2,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "12M".tr(),
                          style: CustomTextstyle.getheme.headline2,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
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
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: AppConstants.displayHeight(context) / 10,
              width: AppConstants.displayWidth(context) / 1.4,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: CustomAppTheme.grey.withOpacity(0.2),
                        blurRadius: 5)
                  ]),
              child: Row(
                children: [
                  Image(
                    image: AssetImage(AllImages.pay5),
                  ),
                  Spacer(),
                  Text(
                    "Payment through Apple Pay".tr(),
                    style: TextStyle(fontSize: 12, color: CustomAppTheme.white),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
