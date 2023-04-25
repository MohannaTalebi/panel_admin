import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:panel_admin/core/controllers/usercontrol.dart';
import 'package:panel_admin/core/utils/routes.dart';
import 'package:panel_admin/screens/authentication/login_email.dart';
// import 'screen/splash.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'models/profile_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  // await Firebase.initializeApp();
  await GetStorage.init();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  final UserController userController = Get.put(UserController());
  // @override
  // void initState() {
  //   super.initState();
  //
  //   Future.delayed(
  //     const Duration(milliseconds: 1000),
  //         () {
  //       userController.checkUserLogin();
  //
  //     },
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: Routes.pages,
      initialRoute: '/',
home: login_email(),
    );
  }
}

