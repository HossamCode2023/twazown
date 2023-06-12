// ignore_for_file: avoid_print, unused_import

import 'dart:io';

import 'package:flutter/material.dart';

checkInternet()async
{
try {
  
var result = await InternetAddress.lookup('google.com');
if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
  print('=============== Check Internet ==========================');
  print(result);
  print('=============== Check Internet ==========================');

  return true;
  
}


}on SocketException catch (e) {
 
  print('=============== Check Internet ==========================');
  print(e);
  print('=============== Check Internet ==========================');
  return false;
}

}