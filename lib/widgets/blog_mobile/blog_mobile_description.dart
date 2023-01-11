import 'package:bet_bitrix/widgets/blog_mobile/blog_mobile_screen.dart';
import 'package:flutter/material.dart';

Container BlogMobileDescription(
    double screenWidth, double paddingHorizontal, BuildContext context) {
  return Container(
    width: screenWidth,
    child: Padding(
      padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal, vertical: paddingHorizontal * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '25 мая 2022',
            style: TextStyle(fontSize: screenWidth * 0.038, color: Colors.blue),
          ),
          SizedBox(
            height: screenWidth * 0.006,
          ),
          Text(
            'Особенности работы',
            style: TextStyle(
                fontSize: screenWidth * 0.066,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: screenWidth * 0.012,
          ),
          Text(
            'с букмекерами',
            style: TextStyle(
                fontSize: screenWidth * 0.066,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: screenWidth * 0.006,
          ),
          Text(
            'при помощи Betbitrix',
            style: TextStyle(
                fontSize: screenWidth * 0.066,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: screenWidth * 0.05,
          ),
          Text(
            'Рассматриваем некоторые особенности работы с укмекерами при использовании приложения Betbitrix для оптимизации работы.',
            style: TextStyle(
              fontSize: screenWidth * 0.038,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          SizedBox(
            height: screenWidth * 0.05,
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
                  style: TextStyle(fontSize: screenWidth * 0.044),
                ),
                Icon(
                  Icons.arrow_forward_outlined,
                  size: screenWidth * 0.044,
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
