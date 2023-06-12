import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controller/test_controller.dart';
import 'package:image_picker/image_picker.dart';

class formone extends StatelessWidget {
  const formone({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TestController>(
        init: TestController(),
        builder: (controller) => Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //pass all arguments you want
                  TextField(
                    controller: controller.textField1,
                  ),
                  Checkbox(
                    value: controller.checkBoxValue,
                    onChanged: (val) {
                      controller.checkBoxValue = val!;
                    },
                  ),
                  // () {
                      // controller.sendtoapi(form1Model(
                      //     text: controller.text1.text,
                      //     value: controller.value));
                    // },
                  InkWell(
                    onTap: (){
                      controller.onChenge();
                    },
                    child: Container(
                        height: 50,
                        width: 200,
                        alignment: Alignment.center,
                        color: Colors.blue,
                        child: const Text(
                          'button',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                   
            const SizedBox(height: 20),
            Obx(() => controller.selectedImageBath.value == ''
            ?const Text('Selected image from camera/galery')
            :SizedBox(
              height: 200.0,
              width: 300.0,
              child: Image.file(File(controller.selectedImageBath.value))),
            ),
            const SizedBox(height: 10.0,),
            Obx(() => Text(controller.selectedImageSize.value == ''
            ?''
            :controller.selectedImageSize.value),),
            MaterialButton(onPressed: (){
              controller.getImage(ImageSource.camera);
            },
            color: Colors.blue,
            child: const Text('Camera'),
            ),
            MaterialButton(onPressed: (){
            controller.getImage(ImageSource.gallery);

            },
            color: Colors.blue,
            child: const Text('Gallery'),
            ),
            
                ],
              ),
            ));
  }
}

//require all arguments you want

Widget text_field_widget(TextEditingController textcontroler) => TextField(
      controller: textcontroler,
    );
