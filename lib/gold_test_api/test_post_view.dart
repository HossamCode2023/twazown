import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/api/class/handling_data_view.dart';
import 'package:myapp/gold_test_api/test_post_controller.dart';


class TestPostView extends StatelessWidget {
  const TestPostView({super.key});

  @override
  Widget build(BuildContext context) {
     
    Get.put(TestPostController());
    return GetBuilder<TestPostController>(
      init: TestPostController(),
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: const Text('Test Post'),
        ),
        body: HandlingDataView(
          statusRequest: controller.statusRequest!,
          widget: Column(
            children: [
              MaterialButton(
                onPressed: () {
                  controller.fetchData();
                },
                color: Colors.blue,
                child: const Text('Sent'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
