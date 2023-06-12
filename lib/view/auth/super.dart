// ignore_for_file: unused_import, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/main.dart';
import 'package:myapp/view/auth/login.dart';
import 'package:myapp/view/pages/home_page/navBar.dart';

class Super extends StatelessWidget {
  const Super({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Super'),),
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          height: 100,
          width: 200,
          child: Center(
            child: MaterialButton(onPressed: () {
              // sharedPref!.clear();
              Get.to(const Login());
            },
            child: const Center(child: Text('Super')),color: Colors.amber,height: 100,minWidth: 200,
            ),
          ),
        ),
      ),
    );
  }
}