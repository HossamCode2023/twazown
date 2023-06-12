// ignore_for_file: unused_import, avoid_print

import 'package:get/get.dart';
import 'package:myapp/data/dataResoures/remote/test_data.dart';

import '../api/class/status_request.dart';
import '../api/functions/handling_data_controller.dart';
import '../api/gold_model.dart';

class TestController extends GetxController
{

  TestGoldData testGoldData = TestGoldData(Get.find());
  Map<dynamic , dynamic> goldData = {};
  late StatusRequest statusRequest ; 
  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await testGoldData.getGoldData();
    
    // check status request ================
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      goldData.addAll(response);
      
   
      print('========================= Data ============================');
      print(goldData);
      print('========================= Data ============================');
     
    }
    update();
  }
  @override
  void onInit() {
    getData();
    super.onInit();
  }
}