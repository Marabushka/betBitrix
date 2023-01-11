import 'package:bet_bitrix/utils/icons.dart';
import 'package:flutter/material.dart';

Padding ContactsHeader(double paddingHorizontal, double screenWidth) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: screenWidth * 0.34,
          height: screenWidth * 0.32,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Контакты',
                style: TextStyle(
                    fontSize: screenWidth * 0.011, color: Colors.blue),
              ),
              SizedBox(
                height: screenWidth * 0.006,
              ),
              Text(
                'Связаться с нами',
                style: TextStyle(
                    fontSize: screenWidth * 0.033,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: screenWidth * 0.006,
              ),
              Text(
                'Воспользуйтесь формой обратной связи, чтобы задать любые',
                style: TextStyle(
                  fontSize: screenWidth * 0.011,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
              Text(
                'интересующие вас вопросы. Проблемы с работой, ваши',
                style: TextStyle(
                  fontSize: screenWidth * 0.011,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
              Text(
                'предложения и отзывы будут направлены в отдел работы',
                style: TextStyle(
                  fontSize: screenWidth * 0.011,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
              Text(
                'с клиентами, и мы обязательно ответим вам в ближайшее время!',
                style: TextStyle(
                  fontSize: screenWidth * 0.011,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
              SizedBox(
                height: screenWidth * 0.006,
              ),
              Row(
                children: [
                  Icon(
                    CustomIcon.mail,
                    color: Colors.blue,
                    size: screenWidth * 0.011,
                  ),
                  Text(
                    '  betbitrix@yandex.ru  ',
                    style: TextStyle(
                        fontSize: screenWidth * 0.011, color: Colors.black),
                  ),
                  Icon(
                    CustomIcon.tg,
                    color: Colors.blue,
                    size: screenWidth * 0.011,
                  ),
                  Text(
                    '  @betbitrix',
                    style: TextStyle(
                        fontSize: screenWidth * 0.011, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: screenWidth * 0.006,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Заполнить форму',
                    style: TextStyle(fontSize: screenWidth * 0.011),
                  ))
            ],
          ),
        ),
        Container(
          width: screenWidth * 0.44,
          height: screenWidth * 0.32,
          child: Image.asset(
            'assets/images/vectorScreen.png',
            fit: BoxFit.contain,
          ),
        ),
      ],
    ),
  );
}
