import 'package:flutter/material.dart';

import '../screen/dashbord/profile/component/profile_screen_component.dart';

class ThemModel extends ChangeNotifier{
  late bool _isDark;
  late ThemeSharedPrefrences themeSharedPrefrences;
  bool get isDark => _isDark;

  ThemModel(){

    _isDark = false;
    themeSharedPrefrences = ThemeSharedPrefrences();
    getThemePrefrences();

  }
  set isDark(bool value){
    _isDark = value;
    themeSharedPrefrences.setTheme(value);
    notifyListeners();
  }
  getThemePrefrences() async{
    _isDark = await themeSharedPrefrences.getTheme();
    notifyListeners();
  }
}