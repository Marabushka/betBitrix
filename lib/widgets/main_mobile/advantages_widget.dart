import 'package:flutter/material.dart';

class advantagesMobileWidget extends StatelessWidget {
  String header;
  String title;
  String text;
  bool hasImage;
  advantagesMobileWidget({
    Key? key,
    required this.header,
    required this.hasImage,
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
      mainAxisSize: MainAxisSize.max,
      children: [
        hasImage == true
            ? Container(
                width: screenWidth * 0.88,
                height: screenWidth * 0.65,
                child: Image.asset(
                  'assets/images/Rectangle84.png',
                  fit: BoxFit.contain,
                ),
              )
            : SizedBox.shrink(),
        Text(
          header,
          style: TextStyle(fontSize: screenWidth * 0.038, color: Colors.blue),
        ),
        SizedBox(
          height: screenWidth * 0.006,
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: screenWidth * 0.055,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: screenWidth * 0.006,
        ),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: screenWidth * 0.04,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
        ),
      ],
    );
  }
}
