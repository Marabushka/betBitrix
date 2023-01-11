import 'package:bet_bitrix/utils/colors_repository.dart';
import 'package:bet_bitrix/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterMobile extends StatefulWidget {
  const FooterMobile({Key? key}) : super(key: key);

  @override
  State<FooterMobile> createState() => _FooterMobileState();
}

class _FooterMobileState extends State<FooterMobile> {
  final Uri _url = Uri.parse('https://www.behance.net/AeternaSStudio');
  final String text =
      'Мощное решение для облегчения работы и автоматизции всего процесса взаимодествия с букмекерскими конторами';
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double paddingHorizontal = MediaQuery.of(context).size.width * 0.055;
    return Container(
      width: screenWidth,
      height: screenWidth * 1.94,
      color: CustomColors.lightBlue,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: paddingHorizontal, vertical: paddingHorizontal),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/Vector.png',
              fit: BoxFit.contain,
              scale: 0.8,
            ),
            SizedBox(
              height: screenWidth * 0.006,
            ),
            Text(
              'Программное обеспечение для работы с вилочными ставками.',
              style: TextStyle(
                fontSize: screenWidth * 0.038,
                color: Colors.black,
              ),
            ),
            ConstrainedBox(
                constraints: isExpanded
                    ? BoxConstraints()
                    : BoxConstraints(maxHeight: screenWidth * 0.08),
                child: Text(
                  text,
                  softWrap: true,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontSize: screenWidth * 0.038,
                    color: Colors.black.withOpacity(0.6),
                  ),
                )),
            isExpanded
                ? TextButton(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Cкрыть',
                          style: TextStyle(
                            fontSize: screenWidth * 0.038,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.02,
                        ),
                        Icon(
                          CustomIcon.arrow_up,
                          color: Colors.black,
                          size: screenWidth * 0.02,
                        )
                      ],
                    ),
                    onPressed: () => setState(() => isExpanded = false))
                : TextButton(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Подробнее',
                          style: TextStyle(
                            fontSize: screenWidth * 0.038,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.02,
                        ),
                        Icon(
                          CustomIcon.arrow_down,
                          color: Colors.black,
                          size: screenWidth * 0.02,
                        )
                      ],
                    ),
                    onPressed: () => setState(() => isExpanded = true)),
            Text(
              'Меню',
              style: TextStyle(
                  fontSize: screenWidth * 0.038,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              width: screenWidth - paddingHorizontal * 2,
              height: screenWidth * 0.0027,
              color: Colors.grey,
            ),
            Text(
              'Главная',
              style: TextStyle(
                fontSize: screenWidth * 0.038,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
            Text(
              'Тарифы',
              style: TextStyle(
                fontSize: screenWidth * 0.038,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
            Text(
              'Загрузка',
              style: TextStyle(
                fontSize: screenWidth * 0.038,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
            Text(
              'Блог',
              style: TextStyle(
                fontSize: screenWidth * 0.038,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
            Text(
              'Контакты',
              style: TextStyle(
                fontSize: screenWidth * 0.038,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
            Text(
              'Тех.поддержка',
              style: TextStyle(
                  fontSize: screenWidth * 0.038,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              width: screenWidth - paddingHorizontal * 2,
              height: screenWidth * 0.0027,
              color: Colors.grey,
            ),
            TextButton(
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    CustomIcon.form,
                    size: screenWidth * 0.045,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: screenWidth * 0.02,
                  ),
                  Text(
                    ' Форма обратной связи',
                    style: TextStyle(
                      fontSize: screenWidth * 0.038,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
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
                    size: screenWidth * 0.038,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: screenWidth * 0.02,
                  ),
                  Text(
                    ' betbitrix@yandex.ru',
                    style: TextStyle(
                      fontSize: screenWidth * 0.038,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    CustomIcon.tg,
                    size: screenWidth * 0.038,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: screenWidth * 0.02,
                  ),
                  Text(
                    ' @betbitrix',
                    style: TextStyle(
                      fontSize: screenWidth * 0.038,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: screenWidth - paddingHorizontal * 2,
              height: screenWidth * 0.0027,
              color: Colors.grey,
            ),
            Container(
              width: screenWidth - paddingHorizontal * 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '  ©2021-2022 Betbitrix ',
                    style: TextStyle(
                      fontSize: screenWidth * 0.027,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                  Text(
                    'Политика конфиденциальности ',
                    style: TextStyle(
                      fontSize: screenWidth * 0.027,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: screenWidth - paddingHorizontal * 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      _launchUrl();
                    },
                    child: Text(
                      'Дизайн разработан Aeternas Studio',
                      style: TextStyle(
                          fontSize: screenWidth * 0.027,
                          color: Colors.black.withOpacity(0.6),
                          decoration: TextDecoration.underline),
                    ),
                  ),
                  Text(
                    'Условия использования ',
                    style: TextStyle(
                      fontSize: screenWidth * 0.027,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
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
