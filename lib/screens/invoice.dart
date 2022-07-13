import 'package:doos/constant/constant.dart';
import 'package:doos/constant/custom_app_theme.dart';
import 'package:doos/constant/custom_textstyle.dart';
import 'package:doos/constant/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class InvoiceScreen extends StatefulWidget {
  @override
  _InvoiceScreenState createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomAppTheme.blue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.arrow_forward,
                  color: CustomAppTheme.white.withOpacity(0.6),
                ),
                SizedBox(
                  height: AppConstants.displayHeight(context) / 40,
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
                                width: AppConstants.displayWidth(context) / 6,
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
                            children: [
                              Text(
                                'Contestant number'.tr(),
                                style: CustomTextstyle.getheme.button,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Payment through the network mada'.tr(),
                                style: CustomTextstyle.getheme.button,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: AppConstants.displayHeight(context) / 100,
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
                  height: AppConstants.displayHeight(context) / 50,
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
