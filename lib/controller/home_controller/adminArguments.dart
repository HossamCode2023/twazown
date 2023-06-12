// ignore_for_file: file_names

import 'package:get/get.dart';

class AdminArgumentsController extends GetxController{
  

late String name;
late String id;
late String route;


@override
  void onInit() {
    name = Get.arguments['name'];
    id = Get.arguments['id'];
    route = Get.routing.current;
    super.onInit();
  }


}