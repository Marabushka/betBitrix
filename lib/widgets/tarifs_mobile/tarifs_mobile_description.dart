import 'package:flutter/material.dart';

Padding TarifsMobileDescription(double paddingHorizontal, double screenWidth) {
  return Padding(
    padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal, vertical: paddingHorizontal * 2),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Описание подписки',
          style: TextStyle(fontSize: screenWidth * 0.038, color: Colors.blue),
        ),
        SizedBox(
          height: screenWidth * 0.012,
        ),
        Text(
          'Быстродействие приложения',
          style: TextStyle(
              fontSize: screenWidth * 0.055,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: screenWidth * 0.05,
        ),
        Text(
          'Наше программное обеспечение позволяет проверять и делать ставки на различные вилки одновременно с большой скоростью. У вас есть позможность отслеживать текущие ставки, а также делать новые и вести статистику выбранных ранее вилокНаше программное обеспечение позволяет проверять и делать ставки на различные вилки одновременно с большой скоростью.',
          style: TextStyle(
            fontSize: screenWidth * 0.046,
            color: Colors.black.withOpacity(0.6),
          ),
        ),
      ],
    ),
  );
}
