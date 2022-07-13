import 'package:country_code_picker/country_code_picker.dart';
import 'package:doos/authentication/code_account.dart';
import 'package:doos/constant/constant.dart';
import 'package:doos/constant/custom_app_theme.dart';
import 'package:doos/constant/custom_textstyle.dart';
import 'package:doos/constant/images.dart';
import 'package:doos/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(
              height: AppConstants.displayHeight(context) / 10,
            ),
            Center(
              child: Text(
                'Create an account'.tr(),
                style: CustomTextstyle.getheme.bodyText1,
              ),
            ),
            SizedBox(
              height: AppConstants.displayHeight(context) / 10,
            ),
            Text(
              'Mobile number'.tr(),
              style: CustomTextstyle.getheme.headline1,
            ),
            SizedBox(
              height: AppConstants.size20,
            ),
            Row(
              children: [
                Container(
                  height: AppConstants.displayHeight(context) / 14,
                  width: AppConstants.displayWidth(context) / 6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: CustomAppTheme.white,
                      boxShadow: [
                        BoxShadow(
                            color: CustomAppTheme.grey.withOpacity(0.3),
                            blurRadius: 10,
                            offset: Offset(0, 8))
                      ]),
                  child: CountryCodePicker(
                    textStyle: TextStyle(
                        fontFamily: 'Rubik', color: Colors.black, fontSize: 16),
                    onChanged: (country) {
                      setState(() {
                        // dropdownValue = country.dialCode!;
                        // print("=============> $dropdownValue");
                      });
                    },
                    // initialSelection: 'IN',
                    favorite: ['+91', 'IN'],
                    // optional. Shows only country name and flag
                    // showCountryOnly: false,
                    showFlag: false,
                    // padding: EdgeInsets.zero,
                    // optional. Shows only country name and flag when popup is closed.
                    showOnlyCountryWhenClosed: false,
                    // dialogBackgroundColor: Colors.red,
                    searchDecoration: InputDecoration(
                      hintText: 'Search Country',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2, color: Colors.grey.withOpacity(0.5))),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey.withOpacity(0.5))),
                    ),
                    // optional. aligns the flag and the Text left
                    alignLeft: false,
                    boxDecoration: BoxDecoration(
                      color: Colors.white,
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  height: AppConstants.displayHeight(context) / 14,
                  width: AppConstants.displayWidth(context) / 1.6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: CustomAppTheme.white,
                      boxShadow: [
                        BoxShadow(
                            color: CustomAppTheme.grey.withOpacity(0.3),
                            blurRadius: 10,
                            offset: Offset(0, 8))
                      ]),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password required!!';
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: '78519 89789',
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: AppConstants.displayHeight(context) / 14,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CodeAccount(),
                    ),
                  );
                },
                child: CustomButton(
                  title: 'send code'.tr(),
                  ButtonColor: true,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CodeAccount(),
                        ));
                  },
                )),
          ],
        ),
      ),
    );
  }
}
