import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/themes/themesMode.dart';

import '../services/settingServices.dart';

class ThemesController extends GetxController {
  SettingServices controller = Get.find();
    late ThemeData initialThemeData = controller.sharedPref.getString('theme') as ThemeData;
    late ThemeData themeData;
  void changeThemeMode() {
    if (Get.isDarkMode) {
      Get.changeTheme(Themes.customLightMode);
         ThemeData themeData = Themes.customDarkMode;
controller.sharedPref.setString('theme', themeData as String);

     
    } else {
      Get.changeTheme(Themes.customDarkMode);
        ThemeData themeData = Themes.customLightMode;
controller.sharedPref.setString('theme', themeData as String);
    }
  }
}


// SettingServices controller = Get.find();
// late Locale initialLocale = controller.sharedPref.getString('lang') == null? Get.deviceLocale!:Locale(controller.sharedPref.getString('lang')!);
// void changeLang(String codeLang){
//  Locale locale = Locale(codeLang);
//  controller.sharedPref.setString('lang', codeLang);
//  Get.updateLocale(locale);
// }
// }
