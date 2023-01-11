import 'package:bet_bitrix/utils/colors_repository.dart';
import 'package:bet_bitrix/utils/icons.dart';
import 'package:flutter/material.dart';

import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterDesctop extends StatelessWidget {
  FooterDesctop({Key? key}) : super(key: key);

  @override
  final Uri _url = Uri.parse('https://www.behance.net/AeternaSStudio');
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double paddingHorizontal = MediaQuery.of(context).size.width * 0.11;
    return Container(
      width: screenWidth,
      color: CustomColors.lightBlue,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: paddingHorizontal,
                vertical: paddingHorizontal / 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: screenWidth * 0.24,
                  height: screenWidth * 0.24,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/Vector.png',
                      ),
                      SizedBox(
                        height: screenWidth * 0.01,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Программное обеспечение для работы с вилочными ставками',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.6),
                                fontSize: screenWidth * 0.011),
                          ),
                          SizedBox(
                            height: screenWidth * 0.02,
                          ),
                          Text(
                            'Универсальное решение для сканирования вилок, работы с букмекерами и сбора аналитики. Подходит для пользователя любого уровня подготовки.',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.6),
                                fontSize: screenWidth * 0.011),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: screenWidth * 0.24,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Меню",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: screenWidth * 0.011),
                      ),
                      SizedBox(
                        height: screenWidth * 0.015,
                      ),
                      Text(
                        "Главная",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontSize: screenWidth * 0.011),
                      ),
                      SizedBox(
                        height: screenWidth * 0.015,
                      ),
                      Text(
                        "Тарифы",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontSize: screenWidth * 0.011),
                      ),
                      SizedBox(
                        height: screenWidth * 0.015,
                      ),
                      Text(
                        "Загрузка",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontSize: screenWidth * 0.011),
                      ),
                      SizedBox(
                        height: screenWidth * 0.015,
                      ),
                      Text(
                        "Блог",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontSize: screenWidth * 0.011),
                      ),
                      SizedBox(
                        height: screenWidth * 0.015,
                      ),
                      Text(
                        "Контакты",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontSize: screenWidth * 0.011),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: screenWidth * 0.26,
                  height: screenWidth * 0.24,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Тех поддержка",
                        style: TextStyle(
                            fontSize: screenWidth * 0.011,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: screenWidth * 0.01,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Вы можете рассказать о своей проблеме с работой приложения обратившись в тех.поддержку следующими способами:',
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
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              CustomIcon.form,
                              color: Colors.blue,
                              size: screenWidth * 0.015,
                            ),
                            SizedBox(
                              width: screenWidth * 0.01,
                            ),
                            Text(
                              'Форма обратной связи',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenWidth * 0.01,
                      ),
                      TextButton(
                        onPressed: () {
                          launchMailto();
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              CustomIcon.mail,
                              color: Colors.blue,
                              size: screenWidth * 0.013,
                            ),
                            SizedBox(
                              width: screenWidth * 0.01,
                            ),
                            Text(
                              ' betbitrix@yandex.ru',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenWidth * 0.01,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              CustomIcon.tg,
                              color: Colors.blue,
                              size: screenWidth * 0.015,
                            ),
                            SizedBox(
                              width: screenWidth * 0.01,
                            ),
                            Text(
                              '@betbitrix',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: screenWidth * 0.77,
            height: 1,
            color: Colors.blue,
          ),
          Container(
            width: screenWidth * 0.77,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: screenWidth * 0.009,
                    ),
                    Text(
                      '  ©2021-2022 Betbitrix',
                      style: TextStyle(
                        fontSize: screenWidth * 0.011,
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ),
                    TextButton(
                      onPressed: _launchUrl,
                      child: Text(
                        'Дизайн разработан Aeternas Studio',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: screenWidth * 0.011,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Политика конфиденциальности  ',
                      style: TextStyle(
                          fontSize: screenWidth * 0.011,
                          color: Colors.black.withOpacity(0.6),
                          decoration: TextDecoration.underline),
                    ),
                    Text(
                      'Условия использования  ',
                      style: TextStyle(
                          fontSize: screenWidth * 0.011,
                          color: Colors.black.withOpacity(0.6),
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _launchUrl() async {
    if (await launchUrl(_url)) {
    } else {
      throw 'Could not launch $_url';
    }
  }

  launchMailto() async {
    final mailtoLink = Mailto(
      to: ['betbitrix@yandex.ru'],
    );
    // Convert the Mailto instance into a string.
    // Use either Dart's string interpolation
    // or the toString() method.
    await launch('$mailtoLink');
  }
}
