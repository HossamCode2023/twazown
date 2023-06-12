// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../services/settingServices.dart';

class MyLocaleController extends GetxController {
SettingServices controller = Get.find();
late Locale initialLocale = controller.sharedPref.getString('lang') == null? Get.deviceLocale!:Locale(controller.sharedPref.getString('lang')!);
void changeLang(String codeLang){
 Locale locale = Locale(codeLang);
 controller.sharedPref.setString('lang', codeLang);
 Get.updateLocale(locale);
}
}