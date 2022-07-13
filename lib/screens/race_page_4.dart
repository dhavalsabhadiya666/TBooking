import 'package:doos/constant/constant.dart';
import 'package:doos/constant/custom_app_theme.dart';
import 'package:doos/constant/custom_textstyle.dart';
import 'package:doos/constant/images.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class RacePage4 extends StatefulWidget {
  const RacePage4({Key? key}) : super(key: key);

  @override
  _RacePage4State createState() => _RacePage4State();
}

class _RacePage4State extends State<RacePage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomAppTheme.blue,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.share,
                    color: CustomAppTheme.white,
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_forward,
                      color: CustomAppTheme.white,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: AppConstants.displayHeight(context) / 9,
              ),
              Container(
                height: AppConstants.displayHeight(context) / 2,
                width: AppConstants.displayWidth(context),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        CustomAppTheme.blue.withOpacity(0.7), BlendMode.color),
                    image: AssetImage(AllImages.racePage4),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: CustomAppTheme.white,
                      backgroundImage: AssetImage(AllImages.mainavtar),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Text(
                        'King'.tr(),
                        style: TextStyle(
                            color: CustomAppTheme.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'best timing'.tr(),
                        style: TextStyle(
                            color: CustomAppTheme.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        '00:30.01',
                        style: TextStyle(
                            color: CustomAppTheme.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            children: [
                              Text(
                                'Course'.tr(),
                                style: TextStyle(
                                    color: CustomAppTheme.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                '5',
                                style: TextStyle(
                                    color: CustomAppTheme.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                        Image(
                          image: AssetImage(AllImages.dooswhitelogo),
                          height: 80,
                          width: 80,
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: AppConstants.displayHeight(context) / 20,
              ),
              Icon(
                Icons.share,
                color: CustomAppTheme.white,
                size: 30,
              ),
              SizedBox(
                height: AppConstants.displayHeight(context) / 40,
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
        ),
      ),
    );
  }
}
