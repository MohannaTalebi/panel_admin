import 'package:flutter/material.dart';
import 'package:panel_admin/constants.dart';
import 'package:panel_admin/screens/dashboard/dashboard_screen.dart';
import 'package:panel_admin/screens/main/components/sidemenu.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: sidemenu(),
            ),
            Expanded(
              flex: 5,
              child: dashboard_screen(),
            ),
          ],
        ),
      ),
    );
  }
}




