// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/gold_test_api/model_form.dart';

import 'controller_form.dart';


class FormApi extends StatelessWidget {
  const FormApi({super.key});

  

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FormController>(
        init: FormController(),
        builder: (controller) => Scaffold(
              body: Column(
                children: [
                  //pass all arguments you want
                  TextField(
                    controller: controller.text1,
                  ),
                  Checkbox(
                    value: controller.value,
                    onChanged: (val) {
                      controller.value = val!;
                      controller.update();
                    },
                  ),
                  InkWell(
                    onTap: () {
                      controller.sendtoapi(FormModel(
                          text: controller.text1.text,
                          value: controller.value));
                    },
                    child: Container(
                        height: 50,
                        width: 200,
                        alignment: Alignment.center,
                        color: Colors.black,
                        child: const Text(
                          'button',
                          style: TextStyle(color: Colors.white),
                        )),
                  )
                ],
              ),
            ));
  }
}

//require all arguments you want

Widget text_field_widget(TextEditingController textcontroler) => TextField(
      controller: textcontroler,
    );
