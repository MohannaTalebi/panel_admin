import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:panel_admin/constants.dart';
import 'package:panel_admin/models/RecentFile.dart';
import 'package:panel_admin/screens/dashboard/components/dashoard_widget.dart';
import 'package:panel_admin/screens/dashboard/components/my_file.dart';
import 'package:panel_admin/screens/dashboard/components/recent_file.dart';
import 'package:panel_admin/screens/dashboard/components/storage_detail.dart';

class dashboard_screen extends StatefulWidget {
  const dashboard_screen({Key? key}) : super(key: key);

  @override
  State<dashboard_screen> createState() => _dashboard_screenState();
}

class _dashboard_screenState extends State<dashboard_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            SizedBox(
              height: 16,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      my_file(),
                      SizedBox(height: 16,),
                      recent_file(),
                    ],
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  flex: 2,
                  child: storege_detail(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


