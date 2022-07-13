import 'package:doos/constant/constant.dart';
import 'package:doos/constant/custom_app_theme.dart';
import 'package:doos/constant/custom_textstyle.dart';
import 'package:doos/constant/images.dart';
import 'package:doos/widgets/custom_button.dart';
import 'package:doos/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class Location4 extends StatefulWidget {
  const Location4({Key? key}) : super(key: key);

  @override
  _Location4State createState() => _Location4State();
}

class _Location4State extends State<Location4> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, top: 10),
              height: AppConstants.displayHeight(context) / 3.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AllImages.cardDetails))),
            ),
            CustomInPutField(
              cursorHeight: AppConstants.displayHeight(context) / 34,
              cursorcolor: CustomAppTheme.blue,
              hint: "Country".tr(),
              fieldName: '',
              autofocus: false,
              suffixIcon: Icon(
                Icons.arrow_drop_down,
                color: CustomAppTheme.blue,
              ),
            ),
            CustomInPutField(
              cursorHeight: AppConstants.displayHeight(context) / 34,
              cursorcolor: CustomAppTheme.blue,
              hint: "City".tr(),
              fieldName: '',
              autofocus: false,
              suffixIcon: Icon(
                Icons.arrow_drop_down,
                color: CustomAppTheme.blue,
              ),
            ),
            Container(
              // alignment: Alignment.center,
              height: AppConstants.displayHeight(context) / 6,
              margin: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 50),
              child: TextFormField(
                  maxLines: 3,
                  style: TextStyle(fontSize: 16),
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "the address".tr(),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    isDense: true,
                  )),
              // padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                color: CustomAppTheme.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: CustomAppTheme.grey.withOpacity(0.2),
                      offset: Offset(0, 6),
                      blurRadius: 9,
                      spreadRadius: 3),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton1(title: "save changes".tr(), ButtonColor: true),
                CustomButton1(title: "cancellation".tr(), ButtonColor: false),
              ],
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
