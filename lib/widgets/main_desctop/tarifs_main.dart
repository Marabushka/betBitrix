import 'package:bet_bitrix/utils/colors_repository.dart';
import 'package:bet_bitrix/utils/icons.dart';
import 'package:bet_bitrix/widgets/main_desctop/price_widget.dart';

import 'package:flutter/material.dart';

Column TarifsWidget(double screenWidth, double paddingHorizontal) {
  return Column(
    children: [
      Text(
        'Тарифы',
        style: TextStyle(fontSize: screenWidth * 0.011, color: Colors.blue),
      ),
      Text(
        'Один тариф — много возможностей',
        style: TextStyle(
            fontSize: screenWidth * 0.024,
            color: Colors.black,
            fontWeight: FontWeight.bold),
      ),
      Text(
        'Каждый тариф открывает полный доступ к функциям приложения и получаете',
        style: TextStyle(
          fontSize: screenWidth * 0.011,
          color: Colors.black.withOpacity(0.6),
        ),
      ),
      Text(
        'возможность делать ставки без ограничений в количестве и коэффициенте',
        style: TextStyle(
          fontSize: screenWidth * 0.011,
          color: Colors.black.withOpacity(0.6),
        ),
      ),
      SizedBox(
        height: screenWidth * 0.024,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            priceWidget(screenWidth, 'Недельный', '1', '1 нед', '2900'),
            priceWidgetLined(
                screenWidth, 'Месячный', '2', '1 мес', '9900', '11900'),
            priceWidgetLined(
                screenWidth, 'Квартальный', '3', '3 мес', '24900', '35900'),
          ],
        ),
      )
    ],
  );
}
