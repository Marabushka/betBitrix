import 'package:bet_bitrix/widgets/blog_mobile/blog_mobile_screen.dart';
import 'package:flutter/material.dart';

Widget blogPreviewMobile(
  BuildContext context,
  double width,
  String imagePath,
  String description,
  String date,
  //Future<dynamic> onPressed,
) {
  return Container(
    width: width * 0.24,
    height: width * 0.37,
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        width: width * 0.24,
        height: width * 0.208,
        child: Image.asset(
          imagePath,
          fit: BoxFit.contain,
        ),
      ),
      Text(
        date,
        style: TextStyle(
          fontSize: width * 0.011,
          color: Colors.blue,
        ),
      ),
      Text(
        description,
        maxLines: 5,
        style: TextStyle(
          fontSize: width * 0.0115,
          color: Colors.black.withOpacity(0.6),
        ),
      ),
      TextButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BlogMobileScreenWidget()));
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Читать',
              style: TextStyle(fontSize: width * 0.011),
            ),
            Icon(Icons.arrow_forward_outlined)
          ],
        ),
      ),
    ]),
  );
}
