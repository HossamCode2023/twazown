// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'gold_controller.dart';




class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final TestController testController = Get.put(TestController());
    return GetBuilder<GoldController>(
        init: GoldController(),
        builder: (controller) => Scaffold(
              appBar: AppBar(
                title: const Text('Gold Price\'s'),
              ),
              // ignore: unnecessary_null_comparison
              body:controller.goldPrice != null ?
               Center(
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Gold Price'),
                        const SizedBox(width: 100,),
                        Text("${controller.goldPrice!.price}"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('price Gram 24K'),
                        const SizedBox(width: 100,),
                        Text("${controller.goldPrice!.priceGram24K}"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('price Gram 21K'),
                        const SizedBox(width: 100,),
                        Text("${controller.goldPrice!.priceGram21K}"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('price Gram 18K'),
                        const SizedBox(width: 100,),
                        Text("${controller.goldPrice!.priceGram18K}"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Silver Price'),
                        const SizedBox(width: 100,),
                        Text("${controller.silverPrice!.price}"),
                      ],
                    ),
                    
                  
                  ],
                ),
              ): const Center(child: CircularProgressIndicator()),
            ));
  }
}
