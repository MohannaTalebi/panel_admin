import 'package:flutter/material.dart';
import 'package:panel_admin/constants.dart';
import 'package:panel_admin/screens/dashboard/components/dashoard_widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:panel_admin/screens/dashboard/components/mystorage_card.dart';
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'My Files',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            ElevatedButton.icon(
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.all(16),
                              ),
                              onPressed: () {},
                              icon: Icon(Icons.add),
                              label: Text('Add New'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        GridView.builder(
                          itemCount: 4,
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                                crossAxisSpacing: 16,
                          ),
                          itemBuilder: (context, index) => Container(
                            decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    )),
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


