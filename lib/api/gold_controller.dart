// ignore_for_file: avoid_print, unused_import, depend_on_referenced_packages

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'gold_model.dart';
import 'gold_services.dart';
import 'silver_model.dart';

class GoldController extends GetxController{

  @override
  void onInit() {
    fetchGoldData();
    fetchSilverData();
    super.onInit();
  }
   GoldPrice? goldPrice;

  String goldUrl = 'https://www.goldapi.io/api/XAU/EGP/';
  String silverUrl = 'https://www.goldapi.io/api/XAG/EGP/';
  Map<String, String>? headers = {
          'Content-Type': 'application/json',
          'x-access-token':'goldapi-t9920rlimna7nr-io'
        };

 


  Future<void> fetchGoldData() async {
    try {
      var requestGold = await ApiServices.getRequest(goldUrl,headers);
      print('===================================== Start gold data ===================================');
      print(requestGold);
      goldPrice = GoldPrice.fromJson(requestGold.cast<String, dynamic>());
      print('===================================== End gold data ===================================');
      update();
    } catch (e) {
      // Handle error
      print('Error: $e');
    }
  }
  SilverPrice? silverPrice;
Future<void> fetchSilverData() async {
    try {
      var requestSilver = await ApiServices.getRequest(silverUrl,headers);
      print('===================================== Start silver data ===================================');
      print(requestSilver);
      silverPrice = SilverPrice.fromJson(requestSilver.cast<String, dynamic>());
      print('===================================== End silver data ===================================');
      update();
    } catch (e) {
      // Handle error
      print('Error: $e');
    }
  }


  
}