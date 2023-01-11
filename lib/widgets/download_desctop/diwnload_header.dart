import 'package:flutter/material.dart';

Row DownloadHeader(double paddingHorizontal, double screenWidth) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: EdgeInsets.only(left: paddingHorizontal),
        child: Container(
          width: screenWidth * 0.34,
          height: screenWidth * 0.32,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Загрузить',
                style: TextStyle(
                    fontSize: screenWidth * 0.011, color: Colors.blue),
              ),
              SizedBox(
                height: screenWidth * 0.006,
              ),
              Text(
                'Betbitrix для Windows',
                style: TextStyle(
                    fontSize: screenWidth * 0.033,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: screenWidth * 0.006,
              ),
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.blue,
                    size: 8,
                  ),
                  Text(
                    ' Быстрый доступ к вилкам',
                    style: TextStyle(
                      fontSize: screenWidth * 0.011,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.blue,
                    size: 8,
                  ),
                  Text(
                    ' Широкий выбор букмекерских контор',
                    style: TextStyle(
                      fontSize: screenWidth * 0.011,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.blue,
                    size: 8,
                  ),
                  Text(
                    ' Интуитивный интерфейс и простота работы',
                    style: TextStyle(
                      fontSize: screenWidth * 0.011,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenWidth * 0.006,
              ),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Загрузить последнюю версию',
                        style: TextStyle(fontSize: screenWidth * 0.011),
                      )),
                  SizedBox(
                    width: screenWidth * 0.03,
                  ),
                  Text(
                    'Версия: 01.01.01',
                    style: TextStyle(
                      fontSize: screenWidth * 0.011,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: paddingHorizontal / 2),
        child: Container(
          width: screenWidth * 0.44,
          height: screenWidth * 0.32,
          child: Image.asset(
            'assets/images/image7.png',
            fit: BoxFit.contain,
          ),
        ),
      ),
    ],
  );
}
