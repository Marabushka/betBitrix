import 'package:flutter/material.dart';

Container MainMobileHeader(double screenWidth, double paddingHorizontal) {
  return Container(
    width: screenWidth,
    child: Padding(
      padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal, vertical: paddingHorizontal * 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Betbitrix app.',
            style: TextStyle(fontSize: screenWidth * 0.038, color: Colors.blue),
          ),
          SizedBox(
            height: screenWidth * 0.006,
          ),
          Text(
            'Вилочный сервис',
            style: TextStyle(
                fontSize: screenWidth * 0.066,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'для профессионалов',
            style: TextStyle(
                fontSize: screenWidth * 0.066,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: screenWidth * 0.05,
          ),
          Container(
            width: screenWidth * 0.88,
            height: screenWidth * 0.65,
            child: Image.asset(
              'assets/images/вар31.png',
              fit: BoxFit.contain,
            ),
          ),
          Text(
            'Мощное решение для облегчения работы',
            style: TextStyle(
              fontSize: screenWidth * 0.038,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          Text(
            'и автоматизции всего процесса',
            style: TextStyle(
              fontSize: screenWidth * 0.038,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          Text(
            'взаимодествия с букмекерскими конторами',
            style: TextStyle(
              fontSize: screenWidth * 0.038,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          SizedBox(
            height: screenWidth * 0.1,
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Подробнее',
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
