import 'package:doos/authentication/create_account.dart';
import 'package:doos/authentication/login_account.dart';
import 'package:doos/constant/constant.dart';
import 'package:doos/constant/custom_app_theme.dart';
import 'package:doos/constant/custom_textstyle.dart';
import 'package:doos/constant/images.dart';
import 'package:doos/providers/language_provider.dart';
import 'package:doos/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:provider/provider.dart';

class LoadingPageLogin extends StatefulWidget {
  @override
  _LoadingPageLoginState createState() => _LoadingPageLoginState();
}

class _LoadingPageLoginState extends State<LoadingPageLogin> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LanguageProvider>(context, listen: false);

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: AppConstants.displayHeight(context),
            width: AppConstants.displayWidth(context),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AllImages.splashimage),
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Container(
              height: AppConstants.displayHeight(context),
              width: AppConstants.displayWidth(context),
              color: Color(0xff263D89).withOpacity(0.5),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: AppConstants.displayHeight(context) / 6,
                    ),
                    Container(
                      height: AppConstants.displayHeight(context) / 7,
                      width: AppConstants.displayWidth(context) / 2,
                      // color: Colors.white,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AllImages.dooswhitelogo),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: AppConstants.displayHeight(context) / 6,
                    ),
                    CustomButton(
                      title: 'Registration'.tr(),
                      ButtonColor: true,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CreateAccount(),
                          ),
                        );
                      },
                    ),
                    /* Container(
                      height: AppConstants.displayHeight(context) / 15,
                      width: AppConstants.displayWidth(context) / 1.3,
                      decoration: BoxDecoration(
                        color: CustomAppTheme.blue,
                        borderRadius: BorderRadius.circular(AppConstants.size10),
                      ),
                      child: Center(
                        child: Text(
                          'Registration'.tr(),
                          style: CustomTextstyle.getheme.bodyText2,
                        ),
                      ),
                    ),*/
                    SizedBox(
                      height: AppConstants.size20,
                    ),
                    CustomButton(
                      title: 'sign in'.tr(),
                      ButtonColor: false,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginAccount(),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: AppConstants.displayHeight(context) / 6,
                    ),
                    GestureDetector(
                      onTap: () {
                        translator.setNewLanguage(
                          context,
                          newLanguage:
                              // ignore: deprecated_member_use
                              translator.currentLanguage == "ar" ? 'en' : 'ar',
                          remember: true,
                          restart: true,
                        );
                      },
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor: CustomAppTheme.grey,
                        child: Text(
                          'lang'.tr(),
                          style: CustomTextstyle.getheme.bodyText2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
