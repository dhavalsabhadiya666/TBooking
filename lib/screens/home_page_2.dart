import 'package:doos/constant/constant.dart';
import 'package:doos/constant/custom_app_theme.dart';
import 'package:doos/constant/custom_textstyle.dart';
import 'package:doos/constant/images.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Appbar
            Container(
              margin: EdgeInsets.all(15),
              child: Row(
                children: [
                  Text(
                    "Book your race".tr(),
                    style: CustomTextstyle.getheme.bodyText1,
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.cancel,
                      color: CustomAppTheme.blue,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Packages".tr(),
                style: CustomTextstyle.getheme.bodyText1,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  margin: EdgeInsets.all(15),
                  height: 273,
                  width: AppConstants.displayWidth(context),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(AllImages.racerImage),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              CustomAppTheme.lightBlack, BlendMode.colorDodge)),
                      color: CustomAppTheme.blue),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "a race".tr(),
                        style: CustomTextstyle.getheme.headline6,
                      ),
                      Text(
                        "or two races".tr(),
                        style: CustomTextstyle.getheme.headline6,
                      ),
                      Row(
                        children: [
                          Text(
                            " 118 ".tr(),
                            style: CustomTextstyle.getheme.headline6,
                          ),
                          Text(
                            "Rial".tr(),
                            style: CustomTextstyle.getheme.headline6,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
