import 'package:flutter/material.dart';

Padding DownloadRequirements(double paddingHorizontal, double screenWidth) {
  return Padding(
    padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal, vertical: paddingHorizontal / 3),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Совместимость',
          style: TextStyle(fontSize: screenWidth * 0.011, color: Colors.blue),
        ),
        SizedBox(
          height: screenWidth * 0.006,
        ),
        Text(
          'Минимальные системные требования',
          style: TextStyle(
              fontSize: screenWidth * 0.016,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: screenWidth * 0.006,
        ),
        Row(
          children: [
            Container(
              color: Colors.blue,
              height: 2,
              width: 20,
            ),
            Text(
              '   Windows 7 SP1 Ru',
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
            Container(
              color: Colors.blue,
              height: 2,
              width: 20,
            ),
            Text(
              '   2х ядерный процессор 2.5Гц',
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
            Container(
              color: Colors.blue,
              height: 2,
              width: 20,
            ),
            Text(
              '   2Gb памяти RAM',
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
            Container(
              color: Colors.blue,
              height: 2,
              width: 20,
            ),
            Text(
              '   300Mb памяти на HDD',
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
            Container(
              color: Colors.blue,
              height: 2,
              width: 20,
            ),
            Text(
              '   .NET Framework 4.7',
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
            Container(
              color: Colors.blue,
              height: 2,
              width: 20,
            ),
            Text(
              '   Visual C++ для Visual Studio 2015 x86',
              style: TextStyle(
                fontSize: screenWidth * 0.011,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
