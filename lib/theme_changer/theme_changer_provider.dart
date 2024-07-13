
import 'package:flutter/material.dart';

class ThemeChangerProvider with ChangeNotifier{

  ThemeMode themeMode =ThemeMode.light;

  ThemeMode get themeModes =>themeMode;


  void setTheme(ThemeMode theme){
    themeMode=theme;
    notifyListeners();
  }

}