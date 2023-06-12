// ignore_for_file: unused_local_variable, sized_box_for_whitespace, sort_child_properties_last, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/locale/locale_controller.dart';
import 'package:myapp/services/settingServices.dart';
import 'package:myapp/themes/themes_controller.dart';
import 'package:myapp/view/auth/admin.dart';
import 'package:myapp/view/pages/home_page/navBar.dart';

import '../../themes/themesMode.dart';
import '../../main.dart';

class Login extends GetView<SettingServices> {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    //======== injection MyLocaleController =============
    Get.put(MyLocaleController());
    final ThemesController themesController = Get.put(ThemesController());
    return Scaffold(
            appBar: AppBar(
              
              
              title: Text('2'.tr,style: const TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),),

      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 100,
              width: 200,
              child: Center(
                child:  MaterialButton(onPressed: () {
                  controller.sharedPref.setString('role', 'user');
                  Get.off(NavBar());
                },
                child: Center(child: Text('4'.tr,style: const TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),)),color: Colors.blue,height: 100,minWidth: 200,
                ),) ,
              ),
            ),
          
          Center(
            child: Container(
              margin: EdgeInsets.all(10),
              height: 100,
              width: 200,
              child: Center(
                child: MaterialButton(onPressed: () {
                  controller.sharedPref.setString('role', 'admin');
                  
                  Get.to(Admin(),arguments: {
                    'name': 'admin',
                    'id': '123456',
                  });
                },
                child: Center(child: Text('5'.tr,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),)),color: Colors.amber,height: 100,minWidth: 200,
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(10),
              height: 100,
              width: 200,
              child: Center(
                child: MaterialButton(onPressed: () {
                themesController.changeThemeMode();
                },
                child: Center(child: Text('Change Mode'.tr,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),)),color: Colors.green,height: 100,minWidth: 200,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}