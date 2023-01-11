import 'package:flutter/material.dart';

Container DownloadMobileInstructions(
    double screenWidth, double paddingHorizontal) {
  return Container(
    width: screenWidth,
    color: Colors.blue.withOpacity(0.1),
    child: Padding(
      padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal, vertical: paddingHorizontal * 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Инструкция',
            style: TextStyle(fontSize: screenWidth * 0.038, color: Colors.blue),
          ),
          SizedBox(
            height: screenWidth * 0.006,
          ),
          Text(
            'Начало работы',
            style: TextStyle(
                fontSize: screenWidth * 0.066,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: screenWidth * 0.012,
          ),
          Text(
            'В данной версии были исправлены ошибки, повышена стабильность работы. Добавлена возможность закртытия быстрых ставок. Быстрый доступ к информаци по вилкам. В данной версии были исправлены ошибки, повышена стабильность работы.',
            style: TextStyle(
              fontSize: screenWidth * 0.05,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          SizedBox(
            height: screenWidth * 0.024,
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                width: screenWidth * 0.89,
                child: Image.asset(
                  'assets/images/Rectangle5.png',
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                //width: screenWidth * 0.9,
                child: Image.asset(
                  'assets/images/image 8.png',
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenWidth * 0.05,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.blue,
                    size: screenWidth * 0.022,
                  ),
                  Text(
                    ' Начало работы',
                    style: TextStyle(
                        fontSize: screenWidth * 0.044,
                        color: Colors.black.withOpacity(0.6)),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.blue,
                    size: screenWidth * 0.022,
                  ),
                  Text(
                    ' Авторизация',
                    style: TextStyle(
                        fontSize: screenWidth * 0.044,
                        color: Colors.black.withOpacity(0.6)),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: screenWidth * 0.05,
          ),
          Center(
            child: Stack(
              children: [
                Container(
                  width: screenWidth * 0.42,
                  height: screenWidth * 0.005,
                  color: Colors.grey,
                ),
                Container(
                  width: screenWidth * 0.42 / 6,
                  height: screenWidth * 0.005,
                  color: Colors.blue,
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
