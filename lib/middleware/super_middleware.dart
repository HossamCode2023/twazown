// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/main.dart';
import 'package:myapp/routes/routes.dart';


class SuperMiddleWare extends GetMiddleware {


 @override

  int? get priority => 3;


  bool? myvar = false;

  @override
  RouteSettings? redirect(String? route){
    
    if (myvar == true) return const RouteSettings(name: '/super');
    return null;
    
  }


}