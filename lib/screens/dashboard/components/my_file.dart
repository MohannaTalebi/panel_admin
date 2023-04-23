import 'package:flutter/material.dart';
import 'package:panel_admin/models/my_fields.dart';
import 'package:panel_admin/screens/authentication/login_email.dart';
import 'package:panel_admin/screens/dashboard/components/file_infocard.dart';
import 'package:get/get.dart';

class my_file extends StatelessWidget {
  const my_file({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'My Files',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {

              },
              icon: Icon(Icons.add),
              label: Text('Add New'),
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        GridView.builder(
          itemCount: demoMyFiles.length,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 16,
            childAspectRatio: 1.4,
          ),
          itemBuilder: (context, index) => FileInfocard(
            info: demoMyFiles[index],
          ),
        ),
      ],
    );
  }
}
