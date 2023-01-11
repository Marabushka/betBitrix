import 'package:bet_bitrix/widgets/main_desctop/price_widget.dart';
import 'package:flutter/material.dart';

Padding MainMobilePriceWidget(double paddingHorizontal, double screenWidth) {
  return Padding(
    padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal, vertical: paddingHorizontal * 2),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        priceWidget(screenWidth * 4, 'Недельный', '1', '1 нед', '2900'),
        SizedBox(
          height: screenWidth * 0.15,
        ),
        priceWidgetLined(
            screenWidth * 4, 'Месячный', '2', '1 мес', '9900', '11900'),
        SizedBox(
          height: screenWidth * 0.15,
        ),
        priceWidgetLined(
            screenWidth * 4, 'Квартальный', '3', '3 мес', '24900', '35900'),
        SizedBox(
          height: screenWidth * 0.15,
        ),
      ],
    ),
  );
}
