import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppConstants {
  // //font family
  // static const String fontFamilyDmSanas = "DM_sans";
  // static const String fontFamilyManpore = 'Manpore';
  // static const String Continue = 'Continue';
  //
  // static const String DM_sans_reular = 'DM_sans_reular';
  // static const String DM_sans_bold = 'DM_sans_bold';
  // static const String DM_sans_bold_italic = 'DM_sans_bold_italic';
  // static const String DM_sans_italic = 'DM_sans_italic';
  // static const String DM_sans_medium = 'DM_sans_medium';
  // static const String DM_sans_medium_italic = 'DM_sans_medium_italic';
  // static const String manrope_bold = 'manrope_bold';
  // static const String manrope_extra_light = 'manrope_extra_light';
  // static const String manrope_medium = 'manrope_medium';
  // static const String manrope_semi_bold = 'manrope_semi_bold';
  // static const String manrope_regular = 'manrope_regular';
  // static const String VariableFont_wght = 'VariableFont_wght';

  static const double size5 = 5;
  static const double size10 = 10;
  static const double size20 = 20;
  static const double size30 = 30;
  static const double size40 = 40;
  static const double size50 = 50;
  static const double size60 = 60;
  static const double size70 = 70;
  static const double size80 = 80;
  static const double size90 = 90;
  static const double size100 = 100;

  static displayHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static displayWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
