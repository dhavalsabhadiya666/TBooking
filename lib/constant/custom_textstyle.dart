import 'package:flutter/material.dart';

import 'constant.dart';
import 'custom_app_theme.dart';

class CustomTextstyle {
  static TextTheme get getheme => TextTheme().copyWith(
      bodyText1: _body1,
      bodyText2: _body2,
      headline1: _display1,
      headline2: _display2,
      headline3: _display3,
      headline4: _display4,
      overline: _titletext,
      headline5: _display5,
      headline6: _display6,
      subtitle1: _title,
      subtitle2: _subTitle,
      button: _subHeadline,
      caption: _headline
      // button: _button,
      // caption: _caption,
      // overline: _overline,
      );

  static TextStyle get appBarTitle => _title;

  static TextStyle get textFieldContent => _body1;
  static TextStyle get placeholder => _body2;
  static get TextFieldHintColor => CustomAppTheme.InputFieldHintColor;

  static TextStyle _body1 = TextStyle(
    color: CustomAppTheme.blue,
    fontSize: 25,
    fontWeight: FontWeight.w700,
  );

  static TextStyle _body2 = TextStyle(
    color: CustomAppTheme.white,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static TextStyle _display1 = TextStyle(
    color: CustomAppTheme.bluegrey,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static TextStyle _display2 = TextStyle(
    color: CustomAppTheme.grey,
    fontSize: 15,
    fontWeight: FontWeight.w700,
  );
  static TextStyle _display3 = TextStyle(
    color: CustomAppTheme.blue,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );

  static TextStyle _display4 = TextStyle(
    color: CustomAppTheme.lightGrey,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    // color: CustomAppTheme.blue,
    // fontSize: 20,
    // fontWeight: FontWeight.w800,
  );
  static TextStyle _display5 = TextStyle(
    color: CustomAppTheme.blue,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );
  static TextStyle _display6 = TextStyle(
    color: CustomAppTheme.white,
    fontSize: 30,
    fontWeight: FontWeight.w700,
  );

  static TextStyle _title = TextStyle(
    color: CustomAppTheme.red,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static TextStyle _subTitle = TextStyle(
    color: CustomAppTheme.blue,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static TextStyle _smalltext = TextStyle(
    color: CustomAppTheme.blue,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static TextStyle _titletext = TextStyle(
    color: CustomAppTheme.grey,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );
  static TextStyle _headline = TextStyle(
    color: CustomAppTheme.red,
    fontSize: 25,
    fontWeight: FontWeight.w700,
  );
  //
  static TextStyle _subHeadline = TextStyle(
    color: CustomAppTheme.blue,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );

  // static TextStyle _button = TextStyle(
  //   color: CustomAppTheme.white,
  //   fontSize: 18,
  //   fontWeight: FontWeight.w500,
  // );
  //
  // static TextStyle _caption = TextStyle(
  //   color: CustomAppTheme.lightBlack,
  //   fontSize: 12,
  //   fontWeight: FontWeight.w400,
  // );
  //
  // static TextStyle _overline = TextStyle(
  //   color: CustomAppTheme.lightGrey,
  //   fontSize: 10,
  //   fontWeight: FontWeight.w400,
  // );

  ///input field custom style
  static TextStyle inputFieldNameStyle =
      _body2.copyWith(fontWeight: FontWeight.w600);

  static TextStyle inputFieldHintStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: TextFieldHintColor,
  );

  static TextStyle ScreenTextTitle = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 26,
  );

  static TextStyle smallHintText = TextStyle(
    color: TextFieldHintColor,
    fontSize: 12,
  );

  static TextStyle boldManropeStyle =
      TextStyle(color: Colors.white, fontSize: 36, fontWeight: FontWeight.bold);

  static TextStyle buttonTextStyle = TextStyle(
      fontSize: 16, color: CustomAppTheme.white, fontWeight: FontWeight.bold);

  static TextStyle stepTitie = TextStyle(
      fontSize: 16,
      color: CustomAppTheme.lightGrey,
      fontWeight: FontWeight.bold);
}
