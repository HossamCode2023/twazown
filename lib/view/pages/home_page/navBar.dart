// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/constatnt/color_app.dart';
import 'package:myapp/controller/home_controller/navigatorTabBarController.dart';
import 'package:myapp/view/pages/home_page/homePage18_1.dart';
import 'package:myapp/view/pages/home_page/homePage18_4.dart';
import 'package:myapp/view/pages/review/appSettingPage.dart';
import 'package:myapp/view/pages/review/reviewsPage.dart';
import 'package:myapp/view/pages/review/trainerDetailPage.dart';



class NavBar extends StatelessWidget {
   NavBar({super.key});


  final controller = Get.put(NavTabBarController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavTabBarController>(builder: (controller) {
      return Scaffold(
        body: IndexedStack(
         
          index: controller.tabIndex,
          children: [
            HomePage18_1(),
            AppSetting(),
            const Reviews(),
            TrainerDetail(),
            HomePage_18_4(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0.0,
   type: BottomNavigationBarType.fixed,
          backgroundColor: ColorApp.blackBlueColor2,
          iconSize: 35,
          fixedColor: ColorApp.Color_yellow_2,
          unselectedItemColor: ColorApp.whiteColor2,
          currentIndex: controller.tabIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: controller.changeTabIndex,
          items: [
            _bottomBarItem(Icons.home, ''),
            _bottomBarItem(Icons.settings, ''),
            _bottomBarItem(Icons.video_chat_outlined, ''),
            _bottomBarItem(Icons.dashboard, ''),
            _bottomBarItem(Icons.person_pin_outlined, ''),
          ],

        ),
      );
    },);
  }
}

_bottomBarItem(IconData icon, String lable){
  return BottomNavigationBarItem(icon: Icon(icon), label: lable);
}