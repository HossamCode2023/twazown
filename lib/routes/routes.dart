// ignore_for_file: unused_import, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/middleware/auth_middleware.dart';
import 'package:myapp/middleware/super_middleware.dart';
import 'package:myapp/view/auth/admin.dart';
import 'package:myapp/view/auth/login.dart';
import 'package:myapp/view/auth/super.dart';
import 'package:myapp/view/pages/home_page/homePage18_1.dart';
import 'package:myapp/view/pages/home_page/homePage18_4.dart';
import 'package:myapp/view/pages/home_page/navBar.dart';
import 'package:myapp/view/pages/review/appSettingPage.dart';
import 'package:myapp/view/pages/review/reviewsPage.dart';
import 'package:myapp/view/pages/review/trainerDetailPage.dart';


class AppPage {
static List<GetPage> routes = [
  GetPage(name: navBar, page: () =>  NavBar(),),
  GetPage(name: homePage18_1, page: () =>  HomePage18_1()),
  GetPage(name: appSettingPage, page: () => AppSetting()),
  GetPage(name: reviewsPage, page: () =>   const Reviews()),
  GetPage(name: trainerDetailPage, page: () =>  TrainerDetail()),
  GetPage(name: homePage18_4, page: () =>  HomePage_18_4()),
  GetPage(name: login, page: () =>  const Login(),middlewares: [
    AuthMiddleWare(),
    SuperMiddleWare(),
  ]),
  GetPage(name: admin, page: () =>  const Admin(),),
  GetPage(name: super_midd, page: () =>  const Super(),),
];

  //=========================
static getnavBar()=> navBar;
static getHome()=> homePage18_1;
static getAppSetting()=> appSettingPage;
static getreviewsPage()=> reviewsPage;
static gettrainerDetailPage()=> trainerDetailPage;
static gethomePage18_4()=> homePage18_4;
static getlogin()=> login;
static getadmin()=> admin;
static getsuper()=> super_midd;

//========================
static String navBar = '/navBar'; 
static String homePage18_1 = '/homepage18_1';
static String appSettingPage = '/appSetting';
static String reviewsPage = '/reviewsPage';
static String trainerDetailPage = '/trainerDetailPage';
static String homePage18_4 = '/homePage18_4';
static String login = '/';
static String admin = '/admin';
static String super_midd = '/super';

}