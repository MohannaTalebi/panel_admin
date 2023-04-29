import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:panel_admin/constants.dart';
import 'package:panel_admin/core/controllers/usercontrol.dart';



class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  final UserController userController = Get.put(UserController());
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(milliseconds: 2000),
          () {
        // userController.checkUserLogin();
            Get.toNamed('/dashboard');
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Center(
        child: Container(
          width: 400.0,
          height: 400.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/IMG_6549.PNG'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
