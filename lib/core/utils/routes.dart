import 'package:get/get.dart';
import 'package:panel_admin/screens/admin/users_list.dart';
import 'package:panel_admin/screens/authentication/login_email.dart';
import 'package:panel_admin/screens/authentication/verify_otp.dart';
import 'package:panel_admin/screens/main/main_screen.dart';


class Routes {

  static List<GetPage> get pages =>[

    GetPage(name: '/verify_otp', page: ()=>verify_otp()),
    GetPage(name: '/login_email', page: ()=>login_email()),
    GetPage(name: '/mainscreen', page: ()=>MainScreen()),
    GetPage(name: '/users_list', page: ()=>users_list()),

    
  ];

}