// ignore_for_file: unused_import

import 'package:get/get.dart';
import 'package:myapp/api/class/status_request.dart';

handlingData(response){
  if (response is StatusRequest) {
    return response;
  }else{
    return StatusRequest.success;
  }
}