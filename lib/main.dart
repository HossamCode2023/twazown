// ignore_for_file: unused_import, prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, unnecessary_import, deprecated_member_use, unused_local_variable

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:myapp/api/gold-home.dart';
import 'package:myapp/bindings/initail_Bindings.dart';
import 'package:myapp/locale/locale_controller.dart';
import 'package:myapp/routes/routes.dart';
import 'package:myapp/services/settingServices.dart';
import 'package:myapp/themes/themes_controller.dart';
import 'package:myapp/view/pages/Trainer/Payment.dart';
import 'package:myapp/view/pages/Trainer/addNew.dart';
import 'package:myapp/view/pages/Trainer/editCard.dart';
import 'package:myapp/view/pages/home_page/homePage18_1.dart';
import 'package:myapp/view/pages/home_page/homePage18_3.dart';
import 'package:myapp/view/pages/home_page/homePage18_4.dart';
import 'package:myapp/view/pages/review/appSettingPage.dart';
import 'package:myapp/view/pages/review/reviewsPage.dart';
import 'package:myapp/view/pages/review/trainerDetailPage.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'form/home_form.dart';
import 'themes/themesMode.dart';
import 'locale/locale.dart';
import 'view/testViews/test_2_view.dart';
import 'view/testViews/test_view.dart';
import 'view/test_post_view.dart';





void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp( MyApp());
    
  }




//============= Services =================
Future initialServices() async {
  await Get.putAsync(() => SettingServices().init());
} 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyLocaleController controller = Get.put(MyLocaleController());
    ThemesController themeController = Get.put(ThemesController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget!),
        maxWidth: 1200,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(450, name: MOBILE),
          const ResponsiveBreakpoint.resize(800, name: TABLET),
          const ResponsiveBreakpoint.resize(1000, name: TABLET),
          const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
        ],
        breakpointsLandscape: [
          const ResponsiveBreakpoint.resize(560, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(812, name: MOBILE),
          const ResponsiveBreakpoint.resize(1024, name: TABLET),
          const ResponsiveBreakpoint.autoScale(1120, name: TABLET),
        ],
      ),
      darkTheme: Themes.customDarkMode,
      // theme: themeController.initialThemeData,
      locale: Get.deviceLocale,     //= to know device language ==============================
      // locale: controller.initialLocale, // = to take locate which i chosse
      initialBinding: InitailBaindings(),
      translations: MyLocale(),     //= locale clase
      home: formone(),
      // getPages: AppPage.routes,
      // initialRoute: AppPage.getlogin(),
       
      
    );
  }
}




