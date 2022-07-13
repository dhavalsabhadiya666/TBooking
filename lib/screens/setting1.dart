import 'package:doos/constant/constant.dart';
import 'package:doos/constant/custom_app_theme.dart';
import 'package:doos/constant/custom_textstyle.dart';
import 'package:doos/widgets/custom_button.dart';
import 'package:doos/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class Setting1 extends StatefulWidget {
  const Setting1({Key? key}) : super(key: key);

  @override
  _Setting1State createState() => _Setting1State();
}

class _Setting1State extends State<Setting1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomAppTheme.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Icon(
              Icons.person_outline,
              color: CustomAppTheme.grey,
            ),
          ),
          Center(
            child: Text(
              "Edit account".tr(),
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
            SizedBox(
              height: 20,
            ),
            CustomInPutField(
              cursorHeight: AppConstants.displayHeight(context) / 34,
              cursorcolor: CustomAppTheme.blue,
              hint: "The name".tr(),
              fieldName: '',
              autofocus: false,
            ),
            CustomInPutField(
              cursorHeight: AppConstants.displayHeight(context) / 34,
              cursorcolor: CustomAppTheme.blue,
              hint: "E-mail".tr(),
              fieldName: '',
              autofocus: false,
            ),
            CustomInPutField(
              cursorHeight: AppConstants.displayHeight(context) / 34,
              cursorcolor: CustomAppTheme.blue,
              hint: "contact number".tr(),
              fieldName: '',
              autofocus: false,
            ),
            CustomInPutField(
              cursorHeight: AppConstants.displayHeight(context) / 34,
              cursorcolor: CustomAppTheme.blue,
              hint: "Date of Birth".tr(),
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
              hint: "sex".tr(),
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
              hint: "Nationality".tr(),
              fieldName: '',
              autofocus: false,
              suffixIcon: Icon(
                Icons.arrow_drop_down,
                color: CustomAppTheme.blue,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton1(title: "save changes".tr(), ButtonColor: true),
                CustomButton1(title: "cancellation".tr(), ButtonColor: false),
              ],
            )
          ],
        ),
      ),
    );
  }
}
