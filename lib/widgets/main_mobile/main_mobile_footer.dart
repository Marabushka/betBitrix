import 'package:flutter/material.dart';

Padding MainMobileFooter(double paddingHorizontal, double screenWidth) {
  return Padding(
    padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal, vertical: paddingHorizontal * 2),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'О приложении',
          style: TextStyle(fontSize: screenWidth * 0.038, color: Colors.blue),
        ),
        SizedBox(
          height: screenWidth * 0.006,
        ),
        Text(
          'Мы разработали специальные курсы по обучению успешным вилочным ставкам',
          style: TextStyle(
              fontSize: screenWidth * 0.055,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: screenWidth * 0.012,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(screenWidth * 0.04),
          child: SizedBox(
            width: screenWidth * 0.889,
            child: Image.asset(
              'assets/images/Rectangle 113.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: screenWidth * 0.012,
        ),
        Text(
          'Для желающих обучиться вилочным ставкам и познать все тонкости работы с ними, мы организовали собственный курс.  Записаться на курс, узнать актуальную информацию о ставках и стратегиях заработка  можно в нашем телеграм-канале.',
          style: TextStyle(
            fontSize: screenWidth * 0.044,
            color: Colors.black.withOpacity(0.6),
          ),
        ),
        SizedBox(
          height: screenWidth * 0.006,
        ),
        Container(
          width: screenWidth * 0.889,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Записаться',
                    style: TextStyle(fontSize: screenWidth * 0.038),
                  )),
              SizedBox(
                width: screenWidth * 0.03,
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      'Подробнее',
                      style: TextStyle(fontSize: screenWidth * 0.038),
                    ),
                    Icon(
                      Icons.arrow_forward_outlined,
                      size: screenWidth * 0.038,
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
