import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:panel_admin/constants.dart';
import 'package:panel_admin/core/controllers/usercontrol.dart';
import 'package:pinput/pinput.dart';

class verify_otp extends StatefulWidget {
  const verify_otp({Key? key}) : super(key: key);

  @override
  State<verify_otp> createState() => _verify_otpState();
}

UserController userController = Get.put(UserController());


class _verify_otpState extends State<verify_otp> {
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
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Pinput(
                        onChanged: (pin) {
                          userController.otpCode = pin;
                        },
                        length: 6,
                        defaultPinTheme: PinTheme(
                          width: 55,
                          height: 60,
                          textStyle: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(30, 60, 87, 1),
                              fontWeight: FontWeight.w600),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black26),
                            borderRadius: BorderRadius.circular(15),
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
                          userController.verifyOtp();
                        },
                        child: Text('Log in'),
                      ),
                    ),
                    SizedBox(height: 20,),
                    GestureDetector(
                      onTap: () {
                        userController.verifyOtp();
                      },
                      child: Text(
                        'didnt recived code? Resend again',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF176784),
                        ),
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
