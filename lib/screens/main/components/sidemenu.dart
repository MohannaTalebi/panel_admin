import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:panel_admin/constants.dart';
import 'package:panel_admin/screens/admin/admin_dashboard.dart';
import 'package:panel_admin/screens/main/main_screen.dart';


class sidemenu extends StatelessWidget {
  const sidemenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:bgColor ,
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              margin: EdgeInsets.only(top: 20),
              child: Image.asset('assets/image/IMG_6549.PNG'),
            ),
            SizedBox(height: 20,),
            itemdrawer(
              icon: Icons.dashboard,
              title: 'dashboard',
              ontap: (){
                Get.to(MainScreen());
              },
            ),
            Divider(),
            itemdrawer(
              icon: Icons.supervised_user_circle,
              title: 'Users',
              ontap: (){
                Get.to(admin_dashboard());
              },
            ),
            Divider(),
            itemdrawer(
              icon: Icons.task,
              title: 'task',
              ontap: (){},
            ),
            Divider(),
            itemdrawer(
              icon: Icons.store,
              title: 'store',
              ontap: (){},
            ),
            Divider(),
            itemdrawer(
              icon: Icons.settings,
              title: 'settings',
              ontap: (){},
            ),
          ],
        ),
      ),
    );
  }
}

class itemdrawer extends StatelessWidget {
  const itemdrawer({this.title, this.icon,this.ontap});

  final IconData? icon;

  final String? title;

  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListTile(
        onTap: ontap,
        leading: Icon(
          icon,
          color: Colors.white,
        ),
        title: Text(
          title!,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18
          ),
        ),
      ),
    );
  }
}