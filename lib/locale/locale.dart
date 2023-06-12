import 'package:get/get.dart';

class MyLocale implements Translations {

  @override
 
  Map<String, Map<String, String>> get keys =>
  {
    'ar' :
    {
      '1' : 'الصفحة الرئيسية',
      '2' : ' تسجيل الدخول',
      '3' : ' صفحة الادمن',
      '4' : 'تسجيل مستخدم',
      '5' : 'تسجيل ادمن',
      '6' : 'تسجيل خروج',
      '7' : ' العربية',
      '8' : ' الانجليزية',
      '9' : ' تنبيه',
      '10' : '  انت سوف تغلق التطبيق للخروج اضغط موافق',
      '11' : ' موافق',
      '12' : ' الغاء',
      '13' : ' Snackbar ',

    },

    'en' :
   {
    '1' : 'HomePage',
    '2' : 'Login',
    '3' : 'Admin',
    '4' : 'Login User',
    '5' : 'Admin User',
    '6' : 'Sign out',
    '7' : 'Arabic',
    '8' : 'English',
    '9' : 'Alert',
    '10' : 'You will exit the App to sigin out clike Ok',
    '11' : 'Ok',
    '12' : 'Cancel',
    '13' : 'Snackbar ',
   },

  } ;


}