import 'package:doos/constant/constant.dart';
import 'package:doos/constant/custom_app_theme.dart';
import 'package:doos/constant/custom_textstyle.dart';
import 'package:doos/constant/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class Invoice1 extends StatefulWidget {
  const Invoice1({Key? key}) : super(key: key);

  @override
  _Invoice1State createState() => _Invoice1State();
}

class _Invoice1State extends State<Invoice1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomAppTheme.blue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_forward,
                    color: CustomAppTheme.white.withOpacity(0.6),
                  ),
                ),
                SizedBox(
                  height: AppConstants.size10,
                ),
                Center(
                  child: Text(
                    'Your race has been successfully booked'.tr(),
                    style: CustomTextstyle.getheme.bodyText2,
                  ),
                ),
                SizedBox(
                  height: AppConstants.size10,
                ),
                Stack(
                  children: [
                    Container(
                      height: AppConstants.displayHeight(context) / 1.3,
                      width: AppConstants.displayWidth(context),
                      child: SvgPicture.asset('assets/images/ticket.svg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: AppConstants.displayHeight(context) / 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text('reservation number:'.tr()),
                                  Text(
                                    '#788788',
                                    style: CustomTextstyle.getheme.button,
                                  )
                                ],
                              ),
                              Image(image: AssetImage(AllImages.doosbluelogo)),
                            ],
                          ),
                          SizedBox(
                            height: AppConstants.size10,
                          ),
                          Center(
                            child: Text(
                              '20/40 Meals',
                              style: CustomTextstyle.getheme.subtitle2,
                            ),
                          ),
                          SizedBox(
                            height: AppConstants.size10,
                          ),
                          Divider(
                            color: CustomAppTheme.grey,
                            height: 2,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Contestant number'.tr(),
                                style: CustomTextstyle.getheme.button,
                              ),
                              Text(
                                'King'.tr(),
                                style: CustomTextstyle.getheme.button,
                              )
                            ],
                          ),
                          Divider(
                            color: CustomAppTheme.grey,
                            height: 2,
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Contestant number'.tr(),
                                    style: CustomTextstyle.getheme.button,
                                  ),
                                  Text(
                                    'King'.tr(),
                                    style: CustomTextstyle.getheme.button,
                                  )
                                ],
                              ),
                              SizedBox(
                                width: AppConstants.size5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      'Contestant number'.tr(),
                                      maxLines: 2,
                                      style: CustomTextstyle.getheme.button,
                                    ),
                                  ),
                                  Text(
                                    'King'.tr(),
                                    style: CustomTextstyle.getheme.button,
                                  )
                                ],
                              ),
                            ],
                          ),
                          Divider(
                            color: CustomAppTheme.grey,
                            height: 2,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Contestant number'.tr(),
                                style: CustomTextstyle.getheme.button,
                              ),
                              Text(
                                'King'.tr(),
                                style: CustomTextstyle.getheme.button,
                              )
                            ],
                          ),
                          Divider(
                            color: CustomAppTheme.grey,
                            height: 2,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Contestant number'.tr(),
                                style: CustomTextstyle.getheme.button,
                              ),
                              SizedBox(
                                width: AppConstants.size10,
                              ),
                              Container(
                                height:
                                    AppConstants.displayHeight(context) / 25,
                                width: AppConstants.displayWidth(context) / 3,
                                child: Text(
                                  'Payment through the network mada'.tr(),
                                  maxLines: 5,
                                  textAlign: TextAlign.start,
                                  style: CustomTextstyle.getheme.button,
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            color: CustomAppTheme.grey,
                            height: 2,
                          ),
                          Text(
                            '118 SR',
                            style: CustomTextstyle.getheme.caption,
                          ),
                          Text(
                            'Including added value'.tr(),
                            style: CustomTextstyle.getheme.button,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: AppConstants.displayHeight(context) / 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.share,
                      color: CustomAppTheme.white,
                    ),
                    SizedBox(
                      width: AppConstants.size10,
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
                SizedBox(
                  height: AppConstants.displayHeight(context) / 30,
                ),
                Center(
                    child: Text(
                  'Use your code to login'.tr(),
                  style: CustomTextstyle.getheme.bodyText2,
                )),
                SizedBox(
                  height: AppConstants.displayHeight(context) / 50,
                ),
                Container(
                  height: AppConstants.displayHeight(context) / 7,
                  width: AppConstants.displayWidth(context),
                  decoration: BoxDecoration(
                    color: CustomAppTheme.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: CustomAppTheme.white,
                        backgroundImage: AssetImage('assets/images/avtar.png'),
                      ),
                      Text(
                        'King'.tr(),
                        style: CustomTextstyle.getheme.subtitle2,
                      ),
                      Container(
                        height: AppConstants.displayHeight(context) / 9,
                        width: AppConstants.displayWidth(context) / 4,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage(AllImages.qrCode1),
                                fit: BoxFit.contain),
                            boxShadow: [
                              BoxShadow(
                                  color: CustomAppTheme.grey.withOpacity(0.4),
                                  blurRadius: 10)
                            ]),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: AppConstants.displayHeight(context) / 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
