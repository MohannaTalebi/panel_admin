import 'package:flutter/material.dart';

class dashboard_screen extends StatefulWidget {
  const dashboard_screen({Key? key}) : super(key: key);

  @override
  State<dashboard_screen> createState() => _dashboard_screenState();
}

class _dashboard_screenState extends State<dashboard_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              Text('Dashboard'),
              Expanded(
                child: TextField(
                  
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
