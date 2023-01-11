import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  CustomTab({
    // required this.width,
    required this.title,
  });

  final String title;
  //double width;
  @override
  Widget build(BuildContext context) {
    return Tab(
        child: Text(this.title,
            style: TextStyle(fontSize: 14, color: Colors.black)));
  }
}
