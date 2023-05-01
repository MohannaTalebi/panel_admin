import 'package:flutter/material.dart';
import 'package:panel_admin/screens/admin/component/header_admin.dart';
import 'package:panel_admin/screens/admin/component/table_user.dart';
import 'package:panel_admin/screens/dashboard/components/dashoard_widget.dart';

class users_list extends StatefulWidget {
  const users_list({Key? key}) : super(key: key);

  @override
  State<users_list> createState() => _users_listState();
}

class _users_listState extends State<users_list> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            header(),
            SizedBox(
              height: 16,
            ),
            header_admin(),
            SizedBox(
              height: 16,
            ),
            table_users(),
          ],
        ),
      ),
    );
  }
}




