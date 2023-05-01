import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:panel_admin/constants.dart';
import 'package:panel_admin/screens/admin/component/field_text_admin.dart';


class header_admin extends StatelessWidget {
  const header_admin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: secondaryColor,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Admins Profile',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Get.defaultDialog(
                    title: 'Add User',
                    titleStyle:
                    TextStyle(color: secondaryColor, fontSize: 20),
                    content: Container(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          SizedBox(
                            width: Get.width * 0.3,
                            child: fieldtext(
                              hint: 'First Name',
                              icon: Icons.person,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          fieldtext(
                            hint: 'Last Name',
                            icon: Icons.person,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          fieldtext(
                            hint: 'Password',
                            icon: Icons.lock,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          fieldtext(
                            hint: 'Email',
                            icon: Icons.email,
                          ),
                        ],
                      ),
                    ),
                    confirm: SizedBox(
                      width: Get.width * 0.15,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Confirm'),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                    cancel: Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: SizedBox(
                        width: Get.width * 0.15,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text('Cancel'),
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            side: BorderSide(
                              width: 1.0, color: primaryColor,),
                          ),
                        ),
                      ),
                    ),
                  );
                },
                icon: Icon(Icons.person_add_alt_1),
                label: Text('Add User'),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
