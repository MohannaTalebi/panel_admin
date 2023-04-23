import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:panel_admin/constants.dart';
import 'package:panel_admin/screens/main/main_screen.dart';

class login_email extends StatefulWidget {
  const login_email({Key? key}) : super(key: key);

  @override
  State<login_email> createState() => _login_emailState();
}

class _login_emailState extends State<login_email> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: Get.width,
            height: Get.height,
            decoration: BoxDecoration(
              color: secondaryColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 400,top: 100),
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                            width: 200,
                            height: 200,
                            child: Image.asset('assets/image/IMG_6549.PNG')),
                        SizedBox(
                          height: 70,
                        ),
                        Text(
                          'Welcome',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(50),
              child: Container(
                width: Get.width * 0.4,
                height: Get.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    Text(
                      'Log in Email',
                      style: TextStyle(
                        fontSize: 30,
                        color: secondaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    SizedBox(
                        width: 300,
                        height:300,
                        child: Image.asset('assets/image/email.png')),
                    SizedBox(
                      height: 100,
                    ),
                    SizedBox(
                      height: 50,
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          hintText: 'Email',
                          suffixIcon: Icon(
                            Icons.email,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      width: 300,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: bgColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        onPressed: () {
                          Get.to(MainScreen());
                        },
                        child: Text('Log in'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}