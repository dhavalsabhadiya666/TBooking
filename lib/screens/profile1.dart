import 'package:doos/constant/constant.dart';
import 'package:doos/constant/custom_app_theme.dart';
import 'package:doos/constant/custom_textstyle.dart';
import 'package:doos/constant/images.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class Profile1 extends StatefulWidget {
  const Profile1({Key? key}) : super(key: key);

  @override
  _Profile1State createState() => _Profile1State();
}

class _Profile1State extends State<Profile1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 32,
                      backgroundImage: AssetImage(AllImages.mainavtar),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello".tr(),
                        ),
                        Text(
                          "Sultan".tr(),
                          style: CustomTextstyle.getheme.headline5,
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.share,
                            color: CustomAppTheme.blue,
                          ),
                          Image(
                            image: AssetImage(AllImages.qrCode),
                            height: 50,
                            width: 50,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_forward,
                              color: CustomAppTheme.blue,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15, bottom: 15),
                height: 115,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: 125,
                    width: 200,
                    decoration: BoxDecoration(
                      color: CustomAppTheme.white,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(AllImages.racePath),
                          fit: BoxFit.fill),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage(AllImages.fastCycle)),
                        Text(
                          "fastest cycle".tr(),
                          style: CustomTextstyle.getheme.bodyText2,
                        ),
                        Text(
                          "00:30.01".tr(),
                          style: CustomTextstyle.getheme.bodyText2,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Image(
                  image: AssetImage(AllImages.qrCode1),
                  height: AppConstants.displayHeight(context) / 3,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.share),
                  Container(
                    margin: EdgeInsets.all(15),
                    height: AppConstants.displayHeight(context) / 17,
                    width: AppConstants.displayWidth(context) / 3,
                    decoration: BoxDecoration(
                      color: CustomAppTheme.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.check,
                      color: CustomAppTheme.white,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Latest races".tr(),
                  style: CustomTextstyle.getheme.headline4,
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                height: 150,
                width: AppConstants.displayWidth(context),
                decoration: BoxDecoration(
                    color: CustomAppTheme.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 8,
                          spreadRadius: 2)
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 40,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          "3:00",
                          style: CustomTextstyle.getheme.bodyText2,
                        ),
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Date".tr(),
                          style: TextStyle(
                              color: CustomAppTheme.blue, fontSize: 15),
                        ),
                        Text(
                          "01/12/2021".tr(),
                          style: TextStyle(
                              color: CustomAppTheme.blue, fontSize: 12),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "fastest cycle".tr(),
                          style: TextStyle(
                              color: CustomAppTheme.blue, fontSize: 15),
                        ),
                        Text(
                          "00:35.02".tr(),
                          style: TextStyle(
                              color: CustomAppTheme.blue, fontSize: 12),
                        ),
                      ],
                    ),
                    Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        height: 50,
                        // width: AppConstants.displayWidth(context) / 1.5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 3),
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: CustomAppTheme.blue,
                                  image: DecorationImage(
                                    image: AssetImage(AllImages.mainavtar),
                                  )),
                            ),
                            Container(
                              height: 25,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.amber),
                              child: Center(
                                child: Text(
                                  "#1",
                                  style: CustomTextstyle.getheme.bodyText2,
                                ),
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
