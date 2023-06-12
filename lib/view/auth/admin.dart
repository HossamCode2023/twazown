// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controller/home_controller/adminArguments.dart';
import 'package:myapp/locale/locale_controller.dart';
import 'package:myapp/services/settingServices.dart';
import 'package:myapp/view/auth/login.dart';

import '../../constatnt/color_app.dart';
// import 'package:get/get_utils/get_utils.dart';

class Admin extends GetView<SettingServices> {
  const Admin({super.key});

  @override
  Widget build(BuildContext context) {
    //= injection controllerLang ========================
    MyLocaleController controllerLang = Get.put(MyLocaleController());
    AdminArgumentsController controllerArgument= Get.put(AdminArgumentsController(),permanent: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '3'.tr,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
          preferredSize: Size(400.0,50.0),
          child: Container(
            padding: EdgeInsets.only(bottom: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(controllerArgument.id,style: TextStyle(fontSize: 22.0,color: Colors.white),),
                Text(controllerArgument.name,style: TextStyle(fontSize: 22.0,color: Colors.white),),
                Text(controllerArgument.route,style: TextStyle(fontSize: 22.0,color: Colors.white),),
              ],
            ),
          )),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              width: 200,
              child: Center(
                child: MaterialButton(
                  onPressed: () {
                    Get.defaultDialog(
                      title: '9'.tr,
                      content: Text(
                        '10'.tr,
                        style: TextStyle(fontSize: 16.0),
                      ),
                      titleStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                      textConfirm: '11'.tr,
                      textCancel: '12'.tr,
                      onConfirm: () {
                        controller.sharedPref.clear();
                        Get.to(Login());
                      },
                    );
                  },
                  child: Center(
                      child: Text(
                    '6'.tr,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  )),
                  color: Colors.amber,
                  height: 100,
                  minWidth: 200,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: MaterialButton(
                  onPressed: () {
                    controllerLang.changeLang('ar');
                  },
                  child: Center(
                      child: Text(
                    '7'.tr,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  )),
                  color: Colors.blue,
                  height: 50,
                  minWidth: 200,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: MaterialButton(
                  onPressed: () {
                    controllerLang.changeLang('en');
                  },
                  child: Center(
                      child: Text(
                    '8'.tr,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  )),
                  color: Colors.red,
                  height: 50,
                  minWidth: 200,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(40.0),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: MaterialButton(
                  onPressed: () {
                    Get.snackbar(
                      'title',
                      'How are you?',
                      colorText: Colors.black,
                      duration: Duration(seconds: 2),
                      instantInit: true,
                      snackPosition: SnackPosition.TOP,
                      backgroundGradient: LinearGradient(colors: list_colors_1),
                      borderColor: Colors.black,
                      borderRadius: 15.0,
                      borderWidth: 1.0,
                      maxWidth: 400.0,
                      margin: EdgeInsets.all(20.0),
                    );
                  },
                  child: Center(
                      child: Text(
                    '13'.tr,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  )),
                  color: Colors.orange,
                  height: 50,
                  minWidth: 200,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(40.0),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: MaterialButton(
                  onPressed: () {
                    Get.bottomSheet(
                      Container(
                        margin: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: list_colors_1,begin: Alignment.topCenter,end: Alignment.bottomCenter),
                          // color: Colors.amber,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: const[
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(5.0, 5.0),
                              spreadRadius: 2.0,
                              blurRadius: 15.0,
                            ),
                          ],
                        ),
                        height: 200.0,
                        child: Center(
                            child: Text(
                          'BottomSheet ',
                          style: TextStyle(
                              fontSize: 40.0, fontWeight: FontWeight.bold,color: Colors.white),
                        )),
                      ),
                      enterBottomSheetDuration: Duration(seconds: 1),
                      exitBottomSheetDuration: Duration(seconds: 1),
                    );
                  },
                  child: Center(
                      child: Text(
                    'BottomSheet ',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  )),
                  color: Colors.green,
                  height: 50,
                  minWidth: 200,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(40.0),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: MaterialButton(
                  onPressed: () {
                    // print(Get.isBottomSheetOpen);
                    // print(Get.isDialogOpen);
                    // print(Get.isSnackbarOpen);
                    print(' platform : ${GetPlatform.isDesktop}');
                  },
                  child: Center(
                      child: Text(
                    'Check ',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  )),
                  color: Colors.green,
                  height: 50,
                  minWidth: 200,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
