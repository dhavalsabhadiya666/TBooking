import 'package:doos/bottomnavigationbar/bottom_navigation.dart';
import 'package:doos/constant/constant.dart';
import 'package:doos/constant/custom_app_theme.dart';
import 'package:doos/constant/custom_textstyle.dart';
import 'package:doos/constant/images.dart';
import 'package:doos/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class LoginCode extends StatefulWidget {
  @override
  _LoginCodeState createState() => _LoginCodeState();
}

class _LoginCodeState extends State<LoginCode> {
  TextEditingController _pinPutController = TextEditingController();
  final BoxDecoration pinPutDecoration = BoxDecoration(
    color: CustomAppTheme.white,
    borderRadius: BorderRadius.circular(10.0),
    border: Border.all(color: CustomAppTheme.white),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: AppConstants.displayHeight(context) / 16,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: AppConstants.displayHeight(context) / 12,
                width: AppConstants.displayWidth(context) / 3.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AllImages.doosbluelogo),
                  ),
                ),
              ),
            ),
            Text(
              'activation code'.tr(),
              style: CustomTextstyle.getheme.bodyText1,
            ),
            Text(
              'Activation center has been sent to mobile 05000000'.tr(),
              style: CustomTextstyle.getheme.headline2,
            ),
            SizedBox(
              height: AppConstants.displayHeight(context) / 10,
            ),
            OtpTextField(
              keyboardType: TextInputType.number,
              cursorColor: Colors.grey.withOpacity(0.5),
              numberOfFields: 4,
              margin: EdgeInsets.symmetric(
                horizontal: AppConstants.size10,
              ),
              fieldWidth: 60,
              showFieldAsBox: true,
              textStyle: TextStyle(fontSize: 24),
              // focusedBorderColor: CustomAppTheme.white,
              focusedBorderColor: Colors.black.withOpacity(0.5),
              fillColor: Colors.white.withOpacity(0.5),
              filled: true,
              borderRadius: BorderRadius.circular(10),
              onSubmit: (pin) {
                // _pin = pin;
              },

              // borderColor: Color(0xff222248),
            ),
            SizedBox(
              height: AppConstants.displayHeight(context) / 20,
            ),
            Text(
              '0:01 resend'.tr(),
              style: CustomTextstyle.getheme.headline1,
            ),
            SizedBox(
              height: AppConstants.displayHeight(context) / 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomButton(
                title: 'next one'.tr(),
                ButtonColor: true,
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (context) => BottomNavigation()),
                      (Route<dynamic> route) => false);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
