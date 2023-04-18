import 'package:flutter/material.dart';
import 'package:panel_admin/constants.dart';


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
              child: Image.asset('assets/image/IMG_6549.PNG'),
            ),
            itemdrawer(
              icon: Icons.dashboard,
              title: 'dashboard',
              ontap: (){},
            ),
            itemdrawer(
              icon: Icons.transcribe,
              title: 'transcribe',
              ontap: (){},
            ),
            itemdrawer(
              icon: Icons.task,
              title: 'task',
              ontap: (){},
            ),
            itemdrawer(
              icon: Icons.store,
              title: 'store',
              ontap: (){},
            ),
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
    return ListTile(
      onTap: ontap,
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        title!,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}