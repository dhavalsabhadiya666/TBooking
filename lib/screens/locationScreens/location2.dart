import 'package:doos/constant/custom_app_theme.dart';
import 'package:doos/constant/custom_textstyle.dart';
import 'package:doos/constant/images.dart';
import 'package:doos/screens/locationScreens/location3.dart';
import 'package:doos/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class Location2 extends StatefulWidget {
  const Location2({Key? key}) : super(key: key);

  @override
  _Location2State createState() => _Location2State();
}

class _Location2State extends State<Location2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomAppTheme.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Icon(
              Icons.payments,
              color: Colors.green[300],
            ),
          ),
          Center(
            child: Text(
              "payment methods".tr(),
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
      body: Column(
        children: [
          ListTile(
            leading: Container(
              height: 20,
              width: 40,
              child: Image(
                image: AssetImage(AllImages.pay1),
              ),
            ),
            title: Text(
              "Mada or bank account".tr(),
              style: CustomTextstyle.getheme.headline2,
            ),
          ),
          Divider(
            color: CustomAppTheme.grey,
          ),
          ListTile(
            leading: Container(
              height: 20,
              width: 40,
              child: Image(
                image: AssetImage(AllImages.pay2),
              ),
            ),
            title: Text(
              "Apple Pay",
              style: CustomTextstyle.getheme.headline2,
            ),
          ),
          Divider(
            color: CustomAppTheme.grey,
          ),
          ListTile(
            leading: Container(
              height: 20,
              width: 40,
              child: Image(
                image: AssetImage(AllImages.pay3),
              ),
            ),
            title: Text(
              "Stc Pay",
              style: CustomTextstyle.getheme.headline2,
            ),
          ),
          Divider(
            color: CustomAppTheme.grey,
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Location3(),
                  ));
            },
            leading: Container(
              height: 20,
              width: 40,
              child: Image(
                image: AssetImage(AllImages.pay4),
              ),
            ),
            title: Text(
              "credit card".tr(),
              style: CustomTextstyle.getheme.headline2,
            ),
          ),
          Divider(
            color: CustomAppTheme.grey,
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton1(title: "save changes".tr(), ButtonColor: true),
              CustomButton1(title: "cancellation".tr(), ButtonColor: false),
            ],
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
