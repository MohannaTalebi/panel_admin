import 'package:flutter/material.dart';
import 'package:panel_admin/constants.dart';
import 'package:panel_admin/screens/admin/users_list.dart';
import 'package:panel_admin/screens/main/components/sidemenu.dart';


class admin_dashboard extends StatefulWidget {
  const admin_dashboard({Key? key}) : super(key: key);

  @override
  State<admin_dashboard> createState() => _admin_dashboardState();
}

class _admin_dashboardState extends State<admin_dashboard> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: sidemenu(),
            ),
            Expanded(
              flex: 5,
              child: users_list(),
            ),
          ],
        ),
      ),
    );
  }
}
