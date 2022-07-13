import 'package:flutter/cupertino.dart';

class LanguageProvider extends ChangeNotifier {
  String? currentLanguage = 'ar';
  get GetCurrentLanguage {
    return currentLanguage;
  }

  ChangeLanguage(String lang) {
    currentLanguage = lang;
    notifyListeners();
  }
}
