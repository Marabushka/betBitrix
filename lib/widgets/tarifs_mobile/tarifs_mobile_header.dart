import 'package:flutter/material.dart';

Container TarifsMobileHeader(double screenWidth, double paddingHorizontal) {
  return Container(
    width: screenWidth,
    child: Padding(
      padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal, vertical: paddingHorizontal * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Тарифы',
            style: TextStyle(fontSize: screenWidth * 0.038, color: Colors.blue),
          ),
          SizedBox(
            height: screenWidth * 0.006,
          ),
          Text(
            'Один тариф',
            style: TextStyle(
                fontSize: screenWidth * 0.066,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: screenWidth * 0.012,
          ),
          Container(
            color: Colors.black,
            width: screenWidth * 0.055,
            height: screenWidth * 0.0055,
          ),
          SizedBox(
            height: screenWidth * 0.006,
          ),
          Text(
            'много возможностей',
            style: TextStyle(
                fontSize: screenWidth * 0.066,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: screenWidth * 0.05,
          ),
          Text(
            'Каждый тариф открывает полный доступк функциям приложения и Вы получаете возможность делать ставки без ограничений в количестве и коэффициенте.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: screenWidth * 0.038,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
        ],
      ),
    ),
  );
}
