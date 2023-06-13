// ignore_for_file: unused_import, avoid_print, deprecated_member_use, unused_element

import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myapp/data/dataResoures/remote/test_data.dart';
import 'package:myapp/data/model/form1_model.dart';

import '../api/class/status_request.dart';
import '../api/functions/handling_data_controller.dart';
import '../api/gold_model.dart';

class TestController extends GetxController {
  //  TextEditingController textField1 =  TextEditingController();

  // bool checkBoxValue = false;
  
  var selectedImageBath = ''.obs;
  var selectedImageSize = ''.obs;
  void getImage(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().getImage(source: imageSource);
    if (pickedFile != null) {
      selectedImageBath.value = pickedFile.path;
      selectedImageSize.value =
          '${((File(selectedImageBath.value)).lengthSync() / 1024 / 1024).toStringAsFixed(2)}Mb';
    } else {
      Get.snackbar('Error', 'No image selected',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);
    }
  }

  var text1 = TextEditingController();
  bool value = false;
  sendtoapi(form1Model model) {
      print('================================== model =======================');
    print(text1);
    print(value);
    print(selectedImageBath.value);
      print('================================== model =======================');
  }
}
