// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:get/get.dart';
import 'package:myapp/api/functions/check_internet.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingServices extends GetxService {
  late SharedPreferences sharedPref;

  Future<SettingServices> init() async {
    //============ Start services =================
    sharedPref = await SharedPreferences.getInstance();
    checkInternet();
   
    // =========== End services ==================

    return this;
  }
}
