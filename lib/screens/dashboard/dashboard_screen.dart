import 'package:flutter/material.dart';
import 'package:panel_admin/constants.dart';
import 'package:panel_admin/screens/dashboard/components/dashoard_widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:panel_admin/screens/dashboard/components/mystorage_card.dart';

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
          children: [
            header(),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    height: 500,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: secondaryColor,
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Storage Detail',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        mychart(),
                        mystorage_card(
                          icon: Icons.file_copy,
                          title: 'Document',
                          numberspace:' 1.3GB',
                          color:primaryColor,
                        ),
                        mystorage_card(
                          icon:Icons.perm_media ,
                          title:'Media files' ,
                          numberspace:'2.5GB' ,
                         color: Color(0xFF26E5FF),
                        ),
                        mystorage_card(
                          icon:Icons.folder ,
                          title:'Others files' ,
                          numberspace: '3.20GB',
                          color: Color(0xFFFFCF26),
                        ),
                        mystorage_card(
                          icon:Icons.folder_off ,
                          title:'Unknown' ,
                          numberspace: '3.70GB',
                          color:Color(0xFFEE2727),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


