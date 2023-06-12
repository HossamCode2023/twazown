// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/main.dart';
import 'package:myapp/routes/routes.dart';
import 'package:myapp/services/settingServices.dart';


class AuthMiddleWare extends GetMiddleware {

SettingServices controller = Get.find();


  @override

  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route){
    if (controller.sharedPref.getString('role') == 'user')  return const RouteSettings(name: '/navBar');
    if (controller.sharedPref.getString('role') == 'admin')  return const RouteSettings(name: '/admin');
    return null;
    
    
  }


}