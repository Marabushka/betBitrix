import 'package:flutter/material.dart';

Padding DownloadMobileRequrements(
    double paddingHorizontal, double screenWidth) {
  return Padding(
    padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal, vertical: paddingHorizontal * 2),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Совместимость',
          style: TextStyle(fontSize: screenWidth * 0.038, color: Colors.blue),
        ),
        SizedBox(
          height: screenWidth * 0.006,
        ),
        Text(
          'Минимальные системные требования',
          style: TextStyle(
              fontSize: screenWidth * 0.066,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: screenWidth * 0.05,
        ),
        Row(
          children: [
            Container(
              color: Colors.blue,
              height: 0.0055 * screenWidth,
              width: 0.055 * screenWidth,
            ),
            Text(
              '   Windows 7 SP1 Ru',
              style: TextStyle(
                fontSize: screenWidth * 0.038,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          ],
        ),
        SizedBox(
          height: screenWidth * 0.05,
        ),
        Row(
          children: [
            Container(
              color: Colors.blue,
              height: 0.0055 * screenWidth,
              width: 0.055 * screenWidth,
            ),
            Text(
              '   2х ядерный процессор 2.5Гц',
              style: TextStyle(
                fontSize: screenWidth * 0.038,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          ],
        ),
        SizedBox(
          height: screenWidth * 0.05,
        ),
        Row(
          children: [
            Container(
              color: Colors.blue,
              height: 0.0055 * screenWidth,
              width: 0.055 * screenWidth,
            ),
            Text(
              '   2Gb памяти RAM',
              style: TextStyle(
                fontSize: screenWidth * 0.038,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          ],
        ),
        SizedBox(
          height: screenWidth * 0.05,
        ),
        Row(
          children: [
            Container(
              color: Colors.blue,
              height: 0.0055 * screenWidth,
              width: 0.055 * screenWidth,
            ),
            Text(
              '   300Mb памяти на HDD',
              style: TextStyle(
                fontSize: screenWidth * 0.038,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          ],
        ),
        SizedBox(
          height: screenWidth * 0.05,
        ),
        Row(
          children: [
            Container(
              color: Colors.blue,
              height: 0.0055 * screenWidth,
              width: 0.055 * screenWidth,
            ),
            Text(
              '   .NET Framework 4.7',
              style: TextStyle(
                fontSize: screenWidth * 0.038,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          ],
        ),
        SizedBox(
          height: screenWidth * 0.05,
        ),
        Row(
          children: [
            Container(
              color: Colors.blue,
              height: 0.0055 * screenWidth,
              width: 0.055 * screenWidth,
            ),
            Text(
              '   Visual C++ для Visual Studio 2015 x86',
              style: TextStyle(
                fontSize: screenWidth * 0.038,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          ],
        ),
        SizedBox(
          height: screenWidth * 0.006,
        ),
      ],
    ),
  );
}
