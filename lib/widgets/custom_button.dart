import 'package:doos/constant/constant.dart';
import 'package:doos/constant/custom_app_theme.dart';
import 'package:doos/constant/custom_textstyle.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  String title;
  Function()? onPressed;
  TextStyle? textStyle;
  bool ButtonColor;
  Color? backgroundColor;
  Color? textColor;

  CustomButton({
    required this.title,
    this.onPressed,
    this.textColor,
    required this.ButtonColor,
    this.backgroundColor,
    this.textStyle,
  });

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConstants.displayHeight(context) / 15,
      width: AppConstants.displayWidth(context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: widget.ButtonColor ? CustomAppTheme.blue : CustomAppTheme.red,
      ),
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
            shadowColor: Colors.transparent,
            primary: widget.backgroundColor ?? Colors.transparent,
            //maximumSize: Size(double.infinity, 38),
            minimumSize: Size(double.infinity, 38),
            textStyle: widget.textStyle ??
                TextStyle(
                  fontSize: 14,
                  // fontFamily: CustomTextstyle.fontFamily,
                  fontWeight: FontWeight.w700,
                ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            )),
        child: Text(widget.title, style: CustomTextstyle.getheme.bodyText2),
      ),
    );
  }
}

class CustomButton1 extends StatefulWidget {
  String title;
  Function()? onPressed;
  TextStyle? textStyle;
  bool ButtonColor;
  Color? backgroundColor;
  Color? textColor;

  CustomButton1({
    required this.title,
    this.onPressed,
    this.textColor,
    required this.ButtonColor,
    this.backgroundColor,
    this.textStyle,
  });

  @override
  _CustomButton1State createState() => _CustomButton1State();
}

class _CustomButton1State extends State<CustomButton1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConstants.displayHeight(context) / 15,
      width: AppConstants.displayWidth(context) / 2.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: widget.ButtonColor
            ? CustomAppTheme.blue
            : CustomAppTheme.grey.withOpacity(0.2),
      ),
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
            shadowColor: Colors.transparent,
            primary: widget.backgroundColor ?? Colors.transparent,
            //maximumSize: Size(double.infinity, 38),
            minimumSize: Size(double.infinity, 38),
            textStyle: widget.textStyle ??
                TextStyle(
                  fontSize: 12,
                  // fontFamily: CustomTextstyle.fontFamily,
                  fontWeight: FontWeight.w700,
                ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            )),
        child: Text(widget.title, style: CustomTextstyle.getheme.bodyText2),
      ),
    );
  }
}
