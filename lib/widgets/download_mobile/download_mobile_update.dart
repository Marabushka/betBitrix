import 'package:flutter/material.dart';

Container DownloadMobileUpdate(double screenWidth, double paddingHorizontal) {
    return Container(
          width: screenWidth,
          color: Colors.blue.withOpacity(0.1),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: paddingHorizontal,
                vertical: paddingHorizontal * 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Обновление',
                      style: TextStyle(
                          fontSize: screenWidth * 0.038, color: Colors.blue),
                    ),
                    Text(
                      'Дата выпуска: 3 июня 2022',
                      style: TextStyle(
                          fontSize: screenWidth * 0.027, color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenWidth * 0.006,
                ),
                Text(
                  'Версия 1.0.3',
                  style: TextStyle(
                      fontSize: screenWidth * 0.066,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: screenWidth * 0.006,
                ),
                Text(
                  'В данной версии были исправлены ошибки, повышена стабильность работы. Добавлена возможность закртытия быстрых ставок. Быстрый доступ к информаци по вилкам. В данной версии были исправлены ошибки, повышена стабильность работы. Добавлена возможность закртытия быстрых ставок. Быстрый доступ к информаци по вилкам.',
                  style: TextStyle(
                    fontSize: screenWidth * 0.05,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                SizedBox(
                  height: screenWidth * 0.006,
                ),
              ],
            ),
          ),
        );
  }