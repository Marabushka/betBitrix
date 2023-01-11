import 'package:bet_bitrix/widgets/paint_widget.dart';
import 'package:flutter/material.dart';

Container DownloadBookmekers(double screenWidth, double paddingHorizontal) {
  return Container(
    width: screenWidth,
    color: Colors.blue.withOpacity(0.1),
    child: Padding(
      padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal, vertical: paddingHorizontal / 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.blue,
                    size: screenWidth * 0.005,
                  ),
                  Text(
                    ' Букмекеры',
                    style: TextStyle(
                        fontSize: screenWidth * 0.011,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: screenWidth * 0.006,
              ),
              Text(
                'В данной версии были исправлены ошибки, повышена стабильность работы. Добавлена возможность',
                style: TextStyle(
                  fontSize: screenWidth * 0.011,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
              Text(
                'закртытия быстрых ставок. Быстрый доступ к информаци по вилкам. В данной версии были',
                style: TextStyle(
                  fontSize: screenWidth * 0.011,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
              Text(
                'исправлены ошибки, повышена стабильность работы.',
                style: TextStyle(
                  fontSize: screenWidth * 0.011,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
              SizedBox(
                height: screenWidth * 0.012,
              ),
              SizedBox(
                width: screenWidth * 0.44,
                child: Image.asset(
                  'assets/images/image 11.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: screenWidth * 0.012,
              ),
              SizedBox(
                width: screenWidth * 0.51,
                child: Image.asset(
                  'assets/images/image 12.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: screenWidth * 0.012,
              ),
              SizedBox(
                width: screenWidth * 0.57,
                child: Image.asset(
                  'assets/images/image 13.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(
            width: screenWidth * 0.05,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: screenWidth * 0.02,
                    height: screenWidth * 0.02,
                    child: const Icon(
                      Icons.circle,
                      color: Colors.blue,
                      size: 8,
                    ),
                  ),
                  Text(
                    ' Начало работы',
                    style: TextStyle(
                      fontSize: screenWidth * 0.011,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenWidth * 0.01,
              ),
              Row(
                children: [
                  SizedBox(
                    width: screenWidth * 0.02,
                    height: screenWidth * 0.02,
                    child: const Icon(
                      Icons.circle,
                      color: Colors.blue,
                      size: 8,
                    ),
                  ),
                  Text(
                    ' Авторизация',
                    style: TextStyle(
                      fontSize: screenWidth * 0.011,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenWidth * 0.01,
              ),
              Row(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        width: screenWidth * 0.02,
                        height: screenWidth * 0.02,
                        child: RadialPercentWidget(
                            child: SizedBox.shrink(),
                            arcColor: Colors.blue,
                            arcLeftColor: Colors.blue.withOpacity(0.3),
                            lineWidth: screenWidth * 0.002,
                            freeColor: Colors.transparent,
                            percent: 0.25),
                      ),
                      Icon(
                        Icons.circle,
                        color: Colors.blue,
                        size: screenWidth * 0.005,
                      ),
                    ],
                  ),
                  Text(
                    ' Букмекеры',
                    style: TextStyle(
                      fontSize: screenWidth * 0.011,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenWidth * 0.01,
              ),
              Row(
                children: [
                  SizedBox(
                    width: screenWidth * 0.02,
                    height: screenWidth * 0.02,
                    child: const Icon(
                      Icons.circle,
                      color: Colors.blue,
                      size: 8,
                    ),
                  ),
                  Text(
                    ' Интерфейс',
                    style: TextStyle(
                      fontSize: screenWidth * 0.011,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenWidth * 0.01,
              ),
              Row(
                children: [
                  SizedBox(
                    width: screenWidth * 0.02,
                    height: screenWidth * 0.02,
                    child: const Icon(
                      Icons.circle,
                      color: Colors.blue,
                      size: 8,
                    ),
                  ),
                  Text(
                    ' VPN',
                    style: TextStyle(
                      fontSize: screenWidth * 0.011,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenWidth * 0.01,
              ),
              Row(
                children: [
                  SizedBox(
                    width: screenWidth * 0.02,
                    height: screenWidth * 0.02,
                    child: const Icon(
                      Icons.circle,
                      color: Colors.blue,
                      size: 8,
                    ),
                  ),
                  Text(
                    ' Ставки',
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
                  SizedBox(
                    width: screenWidth * 0.02,
                    height: screenWidth * 0.02,
                    child: const Icon(
                      Icons.circle,
                      color: Colors.blue,
                      size: 8,
                    ),
                  ),
                  Text(
                    ' Ограничения',
                    style: TextStyle(
                      fontSize: screenWidth * 0.011,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    ),
  );
}
