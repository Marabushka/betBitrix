import 'package:bet_bitrix/utils/colors_repository.dart';
import 'package:flutter/material.dart';

Widget ContainerButton(
    double width, String tittle, IconData icon, bool isPressed) {
  return Container(
      height: width * 0.114,
      width: width * 0.152,
      decoration: BoxDecoration(
        border: Border.all(
            width: 3.0,
            color: isPressed == true ? CustomColors.blue : Colors.grey),
        borderRadius: BorderRadius.all(
            Radius.circular(20.0) //                 <--- border radius here
            ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: width * 0.152 * 0.2,
            ),
            Icon(
              icon,
              color: isPressed == true ? CustomColors.blue : Colors.grey,
              size: width * 0.02,
            ),
            SizedBox(
              height: width * 0.006,
            ),
            Text(
              tittle,
              style: TextStyle(
                  color: isPressed == true ? CustomColors.blue : Colors.grey,
                  fontSize: width * 0.011),
            ),
          ],
        ),
      ));
}
