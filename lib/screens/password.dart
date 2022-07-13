import 'package:doos/constant/constant.dart';
import 'package:doos/constant/custom_app_theme.dart';
import 'package:doos/constant/custom_textstyle.dart';
import 'package:doos/widgets/custom_button.dart';
import 'package:doos/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class Password extends StatefulWidget {
  const Password({Key? key}) : super(key: key);

  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomAppTheme.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Icon(
              Icons.star,
              color: CustomAppTheme.red,
            ),
          ),
          Center(
            child: Text(
              "password".tr(),
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
          CustomInPutField(
            cursorHeight: AppConstants.displayHeight(context) / 34,
            cursorcolor: CustomAppTheme.blue,
            hint: "password".tr(),
            fieldName: '',
            autofocus: false,
            prefixIcon: Icon(
              Icons.lock_outline,
              color: CustomAppTheme.blue,
            ),
          ),
          CustomInPutField(
            cursorHeight: AppConstants.displayHeight(context) / 34,
            cursorcolor: CustomAppTheme.blue,
            hint: "Repeat password".tr(),
            fieldName: '',
            autofocus: false,
            prefixIcon: Icon(
              Icons.lock_outline,
              color: CustomAppTheme.blue,
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton1(title: "save changes".tr(), ButtonColor: true),
              CustomButton1(title: "cancellation".tr(), ButtonColor: false),
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
