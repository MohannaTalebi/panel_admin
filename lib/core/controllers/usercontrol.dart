
import 'package:get/get.dart';
import 'package:panel_admin/core/models/api.dart';
import 'package:panel_admin/core/models/user.dart' as user_model;
import 'package:panel_admin/core/models/profile.dart' as profile_model;
import 'package:panel_admin/core/services/local_storage/user.dart' as user_local;
import 'package:panel_admin/core/services/web_api/user.dart' as user_api;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:get/state_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:panel_admin/base/base_variable.dart';
import 'package:panel_admin/screens/authentication/login_email.dart';
import 'package:panel_admin/screens/authentication/verify_otp.dart';
import 'package:panel_admin/screens/main/main_screen.dart';
import 'package:panel_admin/widget/base_widget.dart';
import 'package:panel_admin/core/middleware/middleware.dart';
// import 'package:panel_admin/screen/authentication/OTP.dart';

class UserController extends GetxController {
  late TextEditingController email;
  late TextEditingController identityController;
  late TextEditingController credentialController;
  Rx<bool> loadingForLogin = false.obs;
  Rx<bool> loadingForOtp = false.obs;

  // late user_model.UserModel user;
  late user_model.User user;
  late String otpCode = "";

  GetStorage userBox = GetStorage();

  @override
  void onInit() {
    super.onInit();
    email = TextEditingController();
    identityController = TextEditingController();
    credentialController = TextEditingController();
    fetchUser();
  }

  fetchUser() async {
    try {
      user = user_local.User.getUser()!;
    } catch (_) {}
  }

  @override
  void onClose() {
    email.dispose();
    super.onClose();
  }

  String? identityValidator(String? value) {
    if (value!.length == 0) {
      return "";
    }
    return null;
  }

  void login() async {
    try {
      loadingForLogin.value = true;
      final resp = await user_api.User.sendOtp(
        email: "${email.text}",
      );
      loadingForLogin.value = false;
      if (resp != null) {
        Api api = Middleware.resultValidation(resp);
        if (api.result != null) {
          Get.toNamed('/verify_otp');
        } else {
          BaseWidget.errorSnackBar(
            api.error!.email,
            2,
            SnackPosition.BOTTOM,
          );
        }
      }
    } catch (e) {
      print(e);

    }
  }

  void verifyOtp() async {
    try {
      loadingForOtp.value = true;
      final resp = await user_api.User.verifyOtp(
        email: "${email.text}",
        otp: otpCode,
      );
      loadingForOtp.value = false;
      if (resp != null) {
        Api api = Middleware.resultValidation(resp);
        if (api.result!) {
          // user = user_model.UserModel.fromJson(api.data!);
          // localUser.add(int.parse(user.id!), user);

          user_local.User.eraseUser();
          user_local.User.storeUser(user_model.User.fromJson(api.data!));
          final resp = await user_api.User.getProfile();
          if (resp != null) {
            Api api = Middleware.resultValidation(resp);
            if (api.result!) {
              user_local.User.storeProfile(
                  profile_model.Profile.fromJson(api.data!));

              Get.toNamed('/dashboard');
            } else {
              finalAction();
            }
          } else {
            finalAction();
          }

          Get.toNamed('/dashboard');
        } else {
          BaseWidget.errorSnackBar(
            api.error!.otp,
            2,
            SnackPosition.BOTTOM,
          );
        }
      } else {
        BaseWidget.errorSnackBar(
          "Internet connection error",
          2,
          SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      print(e);
    }
  }

  void checkUserLogin() async {
    if (user_local.User.hasData()) {
      try {
        final resp = await user_api.User.getProfile();
        if (resp != null) {
          Api api = Middleware.resultValidation(resp);
          if (api.result!) {
            user_local.User.storeProfile(
                profile_model.Profile.fromJson(api.data!));
           Get.toNamed('/dashboard');
          } else {
            finalAction();
          }
        } else {
          finalAction();
        }
      } catch (_) {
        user_local.User.eraseUser();
        finalAction();
      }
    } else {
      finalAction();
    }
  }

  void loginViaPass() async {
    try {
      loadingForLogin.value = true;
      final resp = await user_api.User.login(
        identity: identityController.text,
        credential: credentialController.text,
      );
      loadingForLogin.value = false;
      if (resp != null) {
        Api api = Middleware.resultValidation(resp);
        if (api.result!) {
          user_local.User.eraseUser();
          user_local.User.storeUser(user_model.User.fromJson(api.data!));
          final resp = await user_api.User.getProfile();
          if (resp != null) {
            Api api = Middleware.resultValidation(resp);
            if (api.result!) {
              user_local.User.storeProfile(
                  profile_model.Profile.fromJson(api.data!));
            }
          }
          identityController.text = "";
          credentialController.text = "";
          update();
          Get.offAllNamed('/dashboard');
        } else {
          BaseWidget.errorSnackBar(
            api.error!.otp,
            2,
            SnackPosition.BOTTOM,
          );
        }
      } else {
        BaseWidget.errorSnackBar(
          "Internet connection error",
          2,
          SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      BaseWidget.errorSnackBar(
        "Error in login!",
        2,
        SnackPosition.BOTTOM,
      );
    }
  }

  void logout() {
    BaseWidget.confirmBottomSheet(
      Variable.stringVar.logout,
      Variable.stringVar.doYouWantLogout,
      confirmOnTap: () async {
        user = user_local.User.getUser()!;
        await user_api.User.deleteSession(user.access_token!);
        finalAction();
      },
      confirmTxt: Variable.stringVar.yes,
      closeTxt: Variable.stringVar.no,
    );
  }

  void finalAction() {
    user_local.User.eraseUser();
   Get.toNamed('/login_email');
  }
}
