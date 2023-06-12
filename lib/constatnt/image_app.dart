// ignore_for_file: camel_case_types, non_constant_identifier_names, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImagesApp {
  static const String onBoarding1 = "assets/images/imageOne.svg";
  static const String onBoarding2 = "assets/images/imageTow.svg";
  static const String onBoarding3 = "assets/images/image3.svg";
  static const String onBoarding4 = "assets/images/onboarding_logo4.svg";
  static const String onBoarding5 =
      "assets/images/woman-drinking-water-after-workout-removebg-preview 1@2x.png";
  static const String onBoardingtest = "assets/images/three.png";
  static const String doctor = "assets/images/doctor.jpg";
  static const String doctorRR = "assets/images/R.jpg";
  static const String on1 = "assets/images/on1.png";

  static const String photo = 'assets/images/a3.png';
  static const String Popular = 'assets/images/a4.png';
  static const String Blessing = 'assets/images/a6.png';
}

//SVG_image-----------------------------------------------------------------------------------

class SVG_image {
  final Svg = SvgPicture.asset(
    "assets/images/a2.svg",
    alignment: Alignment.bottomCenter,
    fit: BoxFit.cover,
    placeholderBuilder: (BuildContext context) => Container(
        alignment: Alignment.center, child: const CircularProgressIndicator()),
  );
}
