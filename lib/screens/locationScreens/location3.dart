import 'package:doos/constant/constant.dart';
import 'package:doos/constant/custom_app_theme.dart';
import 'package:doos/constant/custom_textstyle.dart';
import 'package:doos/constant/images.dart';
import 'package:doos/screens/home_page.dart';
import 'package:doos/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

import 'location4.dart';

class Location3 extends StatefulWidget {
  const Location3({Key? key}) : super(key: key);

  @override
  _Location3State createState() => _Location3State();
}

class _Location3State extends State<Location3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomAppTheme.white,
        actions: [
          Padding(
              padding: const EdgeInsets.all(15),
              child: Image(
                image: AssetImage(AllImages.pay4),
              )),
          Center(
            child: Text(
              "credit card".tr(),
              style: CustomTextstyle.getheme.headline4,
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Icon(
                Icons.arrow_forward,
                color: CustomAppTheme.grey,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 60,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Location4(),
                        ));
                  },
                  child: Container(
                    height: 200,
                    width: AppConstants.displayWidth(context) / 2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AllImages.addCard))),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Location4(),
                        ));
                  },
                  child: Container(
                    height: 200,
                    width: AppConstants.displayWidth(context) / 2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AllImages.debitCard))),
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
              ],
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton1(
                title: "save changes".tr(),
                ButtonColor: true,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ));
                },
              ),
              CustomButton1(
                title: "cancellation".tr(),
                ButtonColor: false,
              ),
            ],
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
