import 'package:flutter/material.dart';

Container DownloadUpdate(double paddingHorizontal, double screenWidth) {
  return Container(
    color: Colors.blue.withOpacity(0.1),
    child: Padding(
      padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal, vertical: paddingHorizontal / 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Обновление',
            style: TextStyle(fontSize: screenWidth * 0.011, color: Colors.blue),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Версия 1.0.3',
                style: TextStyle(
                    fontSize: screenWidth * 0.016,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Дата выпуска: 3 июня 2022',
                style: TextStyle(
                    fontSize: screenWidth * 0.01,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text(
            'В данной версии были исправлены ошибки, повышена стабильность работы. Добавлена',
            style: TextStyle(
              fontSize: screenWidth * 0.011,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          Text(
            'возможность закртытия быстрых ставок. Быстрый доступ к информаци по вилкам. В',
            style: TextStyle(
              fontSize: screenWidth * 0.011,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          Text(
            'данной версии были исправлены ошибки, повышена стабильность работы. Добавлена ',
            style: TextStyle(
              fontSize: screenWidth * 0.011,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          Text(
            'возможность закртытия быстрых ставок. Быстрый доступ к информаци по вилкам.',
            style: TextStyle(
              fontSize: screenWidth * 0.011,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
        ],
      ),
    ),
  );
}
