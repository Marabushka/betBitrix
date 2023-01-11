import 'package:bet_bitrix/utils/colors_repository.dart';
import 'package:bet_bitrix/utils/icons.dart';
import 'package:flutter/material.dart';

Padding TarifsMainWidget(double paddingHorizontal, double screenWidth) {
  return Padding(
    padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal, vertical: paddingHorizontal / 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Vector.png',
            ),
            SizedBox(
              height: screenWidth * 0.005,
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  width: screenWidth * 0.243,
                  height: screenWidth * 0.0014,
                  color: Colors.grey,
                ),
                Container(
                  width: screenWidth * 0.243,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: screenWidth * 0.0014,
                        height: screenWidth * 0.021,
                        color: Colors.grey,
                      ),
                      Container(
                        width: screenWidth * 0.0014,
                        height: screenWidth * 0.042,
                        color: Colors.grey,
                      ),
                      Container(
                        width: screenWidth * 0.0014,
                        height: screenWidth * 0.021,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenWidth * 0.005,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(screenWidth * 0.01),
                            color: CustomColors.lightBlue,
                          ),
                          width: screenWidth * 0.046,
                          height: screenWidth * 0.046,
                        ),
                        Container(
                          width: screenWidth * 0.036,
                          height: screenWidth * 0.036,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(screenWidth * 0.01),
                            color: CustomColors.beige,
                          ),
                        ),
                        Icon(
                          CustomIcon.calc,
                          color: Colors.blue,
                          size: 0.017 * screenWidth,
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: screenWidth * 0.075,
                ),
                Column(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(screenWidth * 0.01),
                            color: CustomColors.lightBlue,
                          ),
                          width: screenWidth * 0.046,
                          height: screenWidth * 0.046,
                        ),
                        Container(
                          width: screenWidth * 0.036,
                          height: screenWidth * 0.036,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(screenWidth * 0.01),
                            color: CustomColors.beige,
                          ),
                        ),
                        Icon(
                          CustomIcon.graph,
                          color: Colors.blue,
                          size: 0.017 * screenWidth,
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: screenWidth * 0.075,
                ),
                Column(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(screenWidth * 0.01),
                            color: CustomColors.lightBlue,
                          ),
                          width: screenWidth * 0.046,
                          height: screenWidth * 0.046,
                        ),
                        Container(
                          width: screenWidth * 0.036,
                          height: screenWidth * 0.036,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(screenWidth * 0.01),
                            color: CustomColors.beige,
                          ),
                        ),
                        Icon(
                          CustomIcon.scheme,
                          color: Colors.blue,
                          size: 0.017 * screenWidth,
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Описание подписки',
                  style: TextStyle(
                    fontSize: screenWidth * 0.017,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  height: screenWidth * 0.005,
                ),
                Text(
                  'Доступ ко всем возможностям',
                  style: TextStyle(
                      fontSize: screenWidth * 0.024,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: screenWidth * 0.005,
                ),
                Text(
                  'Подписка на Betbitrix предоставляет доступ ко всем возможностям',
                  style: TextStyle(
                    fontSize: screenWidth * 0.01,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                Text(
                  'приложения без ограничений. Вам будут доступны: быстрый и',
                  style: TextStyle(
                    fontSize: screenWidth * 0.01,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                Text(
                  'умный сканер вилок, удобный калькулятор, а также аналитика',
                  style: TextStyle(
                    fontSize: screenWidth * 0.01,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                Text(
                  'ваших ставок.',
                  style: TextStyle(
                    fontSize: screenWidth * 0.01,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
