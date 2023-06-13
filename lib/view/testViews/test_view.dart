// ignore_for_file: unused_import, implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:myapp/api/class/handling_data_view.dart';
import 'package:myapp/api/class/status_request.dart';
import 'package:myapp/controller/test_controller.dart';

import '../../api/gold_controller.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(GoldController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test View'),
      ),
      body: GetBuilder<GoldController>(
        init: GoldController(),
        builder: (controller) {
         return HandlingDataView(
          statusRequest: controller.statusRequest,
          widget: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text("Price : ${controller.goldPrice!.price} L.E",
                style: const TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),)),
                Center(child: Text("Price 24G : ${controller.goldPrice!.priceGram24K} L.E",
                style: const TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),)),
                Center(child: Text("Price 18G : ${controller.goldPrice!.priceGram18K} L.E",
                style: const TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),)),
              ],
            ),
         );
      },
      ),
    );
  }
}