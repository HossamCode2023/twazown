// ignore_for_file: unused_import, avoid_print, deprecated_member_use, unused_element

import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myapp/data/dataResoures/remote/test_data.dart';

import '../api/class/status_request.dart';
import '../api/functions/handling_data_controller.dart';
import '../api/gold_model.dart';

class TestController extends GetxController
{

  // TestGoldData testGoldData = TestGoldData(Get.find());
  // Map<dynamic , dynamic> goldData = {};
  // late StatusRequest statusRequest ; 
  // getData() async {
  //   statusRequest = StatusRequest.loading;
  //   var response = await testGoldData.getGoldData();
    
  //   // check status request ================
  //   statusRequest = handlingData(response);
  //   if (StatusRequest.success == statusRequest) {
  //     goldData.addAll(response);
      
   
  //     print('========================= Data ============================');
  //     print(goldData);
  //     print('========================= Data ============================');
     
  //   }
  //   update();
  // }
  // @override
  // void onInit() {
  //   // getData();
  //   super.onInit();
  // }




  
   TextEditingController textField1 =  TextEditingController();
   
  
  bool checkBoxValue = false;
  // var image = Rxn<File>();
  onChenge(){
    
  print('==================================');
    print(textField1);
   
    print(checkBoxValue);
     update();
  print('==================================');

  }

  // final Rx<XFile?> image = Rx<XFile?>(null);
  // final ImagePicker _picker = ImagePicker();

  // Future<XFile?> pickImage() async {
  //   final pickedFile = await _picker.pickImage(source: ImageSource.camera);
  //   print('========================= picker ==================');
  //   print(image);
  //   return pickedFile;
  // }


// File? image;
// String? imagePath;
// final _picker = ImagePicker();

// Future<void> getImage() async {
// final pickedFile = await _picker.getImage(source: ImageSource.camera);

// if (pickedFile != null) {
//   image = File(pickedFile.path);
//   imagePath = pickedFile.path;
//   print(imagePath);
//   update();
//  } else {
//   print('No image selected.');
//  }
// }


// onPictureSelection() async {
//              getImage();
//             }


var selectedImageBath =''.obs;
var selectedImageSize =''.obs;
void getImage(ImageSource imageSource) async{

  final pickedFile = await ImagePicker().getImage(source: imageSource);
  if (pickedFile != null) 
  {
    selectedImageBath.value = pickedFile.path;
    selectedImageSize.value = '${((File(selectedImageBath.value)).lengthSync()/1024/1024).toStringAsFixed(2)}Mb';

  }
  else
  {
    Get.snackbar('Error', 'No image selected',
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.red,
    colorText: Colors.white);

  }
}
}

