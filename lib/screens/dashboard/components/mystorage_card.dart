import 'package:flutter/material.dart';
import 'package:panel_admin/constants.dart';

class mystorage_card extends StatelessWidget {
  mystorage_card({this.icon, this.numberspace, this.title,this.color});

  IconData? icon;

  String? title, numberspace;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
        border: Border.all(
          color: primaryColor.withOpacity(0.15),
          width: 2,
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: Icon(
              icon,
              color: color,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title??'',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '1128file',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            numberspace??'',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
