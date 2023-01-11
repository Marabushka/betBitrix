import 'package:flutter/material.dart';

Container DownloadMobileHeader(double screenWidth, double paddingHorizontal) {
  return Container(
    width: screenWidth,
    child: Padding(
      padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal, vertical: paddingHorizontal * 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Загрузить',
            style: TextStyle(fontSize: screenWidth * 0.038, color: Colors.blue),
          ),
          SizedBox(
            height: screenWidth * 0.006,
          ),
          Text(
            'Betbitrix',
            style: TextStyle(
                fontSize: screenWidth * 0.066,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'для Windows',
            style: TextStyle(
                fontSize: screenWidth * 0.066,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: screenWidth * 0.05,
          ),
          Container(
            width: screenWidth * 0.89,
            //height: screenWidth * 0.65,
            child: Image.asset(
              'assets/images/image7.png',
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: screenWidth * 0.05,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: screenWidth * 0.01,
                  ),
                  Icon(
                    Icons.circle,
                    color: Colors.blue,
                    size: screenWidth * 0.03,
                  ),
                ],
              ),
              SizedBox(
                width: screenWidth * 0.04,
              ),
              Expanded(
                child: Text(
                  'Быстрый доступ к вилкам',
                  style: TextStyle(
                    fontSize: screenWidth * 0.044,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenWidth * 0.1,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: screenWidth * 0.01,
                  ),
                  Icon(
                    Icons.circle,
                    color: Colors.blue,
                    size: screenWidth * 0.03,
                  ),
                ],
              ),
              SizedBox(
                width: screenWidth * 0.04,
              ),
              Expanded(
                child: Text(
                  'Широкий выбор букмекерских контор',
                  style: TextStyle(
                    fontSize: screenWidth * 0.044,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenWidth * 0.1,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: screenWidth * 0.01,
                  ),
                  Icon(
                    Icons.circle,
                    color: Colors.blue,
                    size: screenWidth * 0.03,
                  ),
                ],
              ),
              SizedBox(
                width: screenWidth * 0.04,
              ),
              Expanded(
                child: Text(
                  'Интуитивный интерфейс и простота работы',
                  style: TextStyle(
                    fontSize: screenWidth * 0.044,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
