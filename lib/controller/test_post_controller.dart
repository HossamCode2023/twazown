import 'package:get/get.dart';
import 'package:myapp/api/class/status_request.dart';

import '../api/gold_services.dart';
import '../data/model/test_model.dart';

class TestPostController extends GetxController 

{
      StatusRequest? statusRequest;
   @override
  void onInit() {
    fetchData();
 
    super.onInit();
  }
   TestModel? testModel;


  Map<String, String>? headers = {
          'Content-Type': 'application/json',
        
         
        };
        Map map = 
        {
          'name': 'hossam',
          'job' : 'flutter development',
        };

 


   Future<void> fetchData() async {
    try {
      var request = await ApiServices.postRequest(
        'https://reqres.in/api/users',
        map,
        headers);
      print('===================================== Start  data ===================================');
      print(request);
      testModel = TestModel.fromJson(request.cast<String, dynamic>());
      print('===================================== End  data ===================================');
     update();
    } catch (e) {
      // Handle error
      print('Error: $e');
    }
  }

 




}