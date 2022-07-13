import 'package:doos/constant/constant.dart';
import 'package:doos/constant/custom_app_theme.dart';
import 'package:doos/constant/custom_textstyle.dart';
import 'package:doos/constant/images.dart';
import 'package:doos/screens/home_page_3.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ///AppBar
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
                      child: Image(
                        image: AssetImage(AllImages.doosbluelogo),
                        width: 80,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15),

              ///ListView
              Container(
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
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage3(),
                          ));
                    },
                    child: Container(
                      width: AppConstants.displayWidth(context) / 1.5,
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: CustomAppTheme.red),
                      child: Row(
                        children: [
                          Text("Race booking".tr(),
                              style: CustomTextstyle.getheme.bodyText2),
                          Spacer(),
                          Icon(
                            Icons.calendar_today_outlined,
                            color: CustomAppTheme.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: AppConstants.displayWidth(context) / 6,
                    width: AppConstants.displayWidth(context) / 6,
                    decoration: BoxDecoration(
                      color: CustomAppTheme.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.location_on_outlined,
                      color: CustomAppTheme.white,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Offers".tr(),
                      style: CustomTextstyle.getheme.bodyText1,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 350,
                // padding: EdgeInsets.only(right: 10),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                    height: 350,
                    width: 300,
                    decoration: BoxDecoration(
                      color: CustomAppTheme.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            child:
                                Image(image: AssetImage(AllImages.sandwich))),
                        Text(
                          "Nights".tr(),
                          style: CustomTextstyle.getheme.headline6,
                        ),
                        Text(
                          "pedals".tr(),
                          style: CustomTextstyle.getheme.headline6,
                        ),
                        Text(
                          "All days all times".tr(),
                          style: CustomTextstyle.getheme.bodyText2,
                        ),
                        Row(
                          children: [
                            Text(
                              "112 ".tr(),
                              style: CustomTextstyle.getheme.headline6,
                            ),
                            Text(
                              "Rial".tr(),
                              style: CustomTextstyle.getheme.bodyText2,
                            ),
                            Spacer(),
                            Container(
                              height: 40,
                              width: AppConstants.displayWidth(context) / 3,
                              decoration: BoxDecoration(
                                  color: CustomAppTheme.red,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text(
                                  "Book now".tr(),
                                  style: CustomTextstyle.getheme.bodyText2,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "The last races".tr(),
                      style: CustomTextstyle.getheme.bodyText1,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                height: 160,
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
                          color: CustomAppTheme.blue,
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
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 50,
                        itemBuilder: (context, index) => Container(
                          margin: EdgeInsets.symmetric(horizontal: 3),
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: CustomAppTheme.blue,
                              image: DecorationImage(
                                  image: AssetImage(AllImages.mainavtar))),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                height: 160,
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
                          color: CustomAppTheme.blue,
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          "4:00",
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
                          "00:42.02".tr(),
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
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 50,
                        itemBuilder: (context, index) => Container(
                          margin: EdgeInsets.symmetric(horizontal: 3),
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: CustomAppTheme.blue,
                              image: DecorationImage(
                                  image: AssetImage(AllImages.mainavtar))),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "visit us".tr(),
                      style: CustomTextstyle.getheme.bodyText1,
                    ),
                  ],
                ),
              ),
              Container(
                height: AppConstants.displayHeight(context) / 2,
                width: AppConstants.displayWidth(context),
                child: Image(
                  image: AssetImage(AllImages.map),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
