import 'package:bet_bitrix/utils/colors_repository.dart';
import 'package:flutter/material.dart';

class advantagesWidget extends StatelessWidget {
  String header;
  String title;
  String text;
  advantagesWidget({
    Key? key,
    required this.header,
    required this.screenWidth,
    required this.text,
    required this.title,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          header,
          style: TextStyle(
              fontSize: screenWidth * 0.011, color: CustomColors.blue),
        ),
        SizedBox(
          height: screenWidth * 0.006,
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: screenWidth * 0.024,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: screenWidth * 0.006,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: screenWidth * 0.011,
            color: Colors.black.withOpacity(0.6),
          ),
        ),
      ],
    );
  }
}
