import 'package:bet_bitrix/utils/icons.dart';
import 'package:flutter/material.dart';

Container ContactsFooterMobile(double screenWidth, double paddingHorizontal) {
  return Container(
    width: screenWidth,
    child: Padding(
      padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal, vertical: paddingHorizontal * 0.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Контакты',
            style: TextStyle(fontSize: screenWidth * 0.038, color: Colors.blue),
          ),
          SizedBox(
            height: screenWidth * 0.006,
          ),
          Text(
            'Связаться с нами',
            style: TextStyle(
                fontSize: screenWidth * 0.066,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: screenWidth * 0.05,
          ),
          Container(
            width: screenWidth * 0.88,
            height: screenWidth * 0.65,
            child: Image.asset(
              'assets/images/vectorScreen.png',
              fit: BoxFit.contain,
            ),
          ),
          Text(
            'Воспользуйтесь формой обратной связи, чтобы задать любые интересующие вас вопросы. Проблемы с работой приложения, ваши предложения и отзывы будут направлены в отдел работы с клиентами, и мы обязательно ответим вам в ближайшее время!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: screenWidth * 0.038,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          SizedBox(
            height: screenWidth * 0.1,
          ),
          Row(
            children: [
              Row(
                children: [
                  Icon(
                    CustomIcon.mail,
                    size: screenWidth * 0.038,
                    color: Colors.blue,
                  ),
                  Text(
                    '  betbitrix@yandex.ru',
                    style: TextStyle(
                      fontSize: screenWidth * 0.038,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: screenWidth * 0.15,
              ),
              Row(
                children: [
                  Icon(
                    CustomIcon.tg,
                    size: screenWidth * 0.038,
                    color: Colors.blue,
                  ),
                  Text(
                    '  @betbitrix',
                    style: TextStyle(
                      fontSize: screenWidth * 0.038,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: screenWidth * 0.1,
          ),
          ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.all(screenWidth * 0.027),
                child: Text(
                  'Заполнить форму',
                  style: TextStyle(fontSize: screenWidth * 0.038),
                ),
              )),
        ],
      ),
    ),
  );
}
