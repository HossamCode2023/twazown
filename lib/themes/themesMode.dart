// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class Themes {
static ThemeData customDarkMode = ThemeData.dark().copyWith(
  
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: Colors.grey[900],
   titleTextStyle: TextStyle(
    color: Colors.white,
    fontSize: 24.0,
    
   ),
   
  ),
);
static ThemeData customLightMode = ThemeData.light().copyWith(
  appBarTheme: AppBarTheme(
        centerTitle: true,

    backgroundColor: Colors.white,
    titleTextStyle: TextStyle(
    color: Colors.black,
    fontSize: 24.0,

   ),
  ),
);

}