// // ignore_for_file: unused_import, implementation_imports

// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:get/get.dart';
// import 'package:myapp/api/class/handling_data_view.dart';
// import 'package:myapp/api/class/status_request.dart';
// import 'package:myapp/controller/test_controller.dart';

// class TestView extends StatelessWidget {
//   const TestView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Get.put(TestController());
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Test View'),
//       ),
//       body: GetBuilder<TestController>(
//         init: TestController(),
//         builder: (controller) {
//          return HandlingDataView(
//           statusRequest: controller.statusRequest,
//           widget: Column(mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Center(child: Text("Price : ${controller.goldData['price']} L.E",
//                 style: const TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),)),
//                 Center(child: Text("Price 24G : ${controller.goldData['price_gram_24k']} L.E",
//                 style: const TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),)),
//                 Center(child: Text("Price 18G : ${controller.goldData['price_gram_18k']} L.E",
//                 style: const TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),)),
//               ],
//             ),
//          );
//       },
//       ),
//     );
//   }
// }