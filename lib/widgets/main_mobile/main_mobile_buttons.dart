import 'package:bet_bitrix/utils/icons.dart';
import 'package:bet_bitrix/widgets/main_mobile/advantages_widget.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainMobileButtonsWidget extends StatefulWidget {
  MainMobileButtonsWidget({Key? key}) : super(key: key);

  @override
  State<MainMobileButtonsWidget> createState() =>
      _MainMobileButtonsWidgetState();
}

class _MainMobileButtonsWidgetState extends State<MainMobileButtonsWidget> {
  int activeIndex = 0;
  final _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double paddingHorizontal = MediaQuery.of(context).size.width * 0.055;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal, vertical: paddingHorizontal * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    activeIndex = 0;
                    _controller.jumpToPage(0);
                  });
                },
                child: Column(
                  children: [
                    Icon(
                      CustomIcon.tv,
                      size: screenWidth * 0.08,
                      color: activeIndex == 0 ? Colors.blue : Colors.grey,
                    ),
                    SizedBox(
                      height: screenWidth * 0.02,
                    ),
                    Text(
                      'Удобный интерфейс',
                      style: TextStyle(
                        fontSize: screenWidth * 0.038,
                        color: activeIndex == 0 ? Colors.blue : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    activeIndex = 1;
                    _controller.jumpToPage(1);
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      CustomIcon.vifi,
                      size: screenWidth * 0.08,
                      color: activeIndex == 1 ? Colors.blue : Colors.grey,
                    ),
                    SizedBox(
                      height: screenWidth * 0.02,
                    ),
                    Text(
                      'Встроенный VPN',
                      style: TextStyle(
                        fontSize: screenWidth * 0.038,
                        color: activeIndex == 1 ? Colors.blue : Colors.grey,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: screenWidth * 0.1,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    activeIndex = 2;
                    _controller.jumpToPage(2);
                  });
                },
                child: Column(
                  children: [
                    Icon(
                      CustomIcon.percent,
                      size: screenWidth * 0.08,
                      color: activeIndex == 2 ? Colors.blue : Colors.grey,
                    ),
                    SizedBox(
                      height: screenWidth * 0.02,
                    ),
                    Text(
                      'Экономия трафика',
                      style: TextStyle(
                        fontSize: screenWidth * 0.038,
                        color: activeIndex == 2 ? Colors.blue : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    activeIndex = 3;
                    _controller.jumpToPage(3);
                  });
                },
                child: Column(
                  children: [
                    Icon(
                      CustomIcon.scheme,
                      size: screenWidth * 0.08,
                      color: activeIndex == 3 ? Colors.blue : Colors.grey,
                    ),
                    SizedBox(
                      height: screenWidth * 0.02,
                    ),
                    Text(
                      'Быстродействие',
                      style: TextStyle(
                        fontSize: screenWidth * 0.038,
                        color: activeIndex == 3 ? Colors.blue : Colors.grey,
                      ),
                    ),
                    Text(
                      'приложения',
                      style: TextStyle(
                        fontSize: screenWidth * 0.038,
                        color: activeIndex == 3 ? Colors.blue : Colors.grey,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: screenWidth * 0.048,
          ),
          Column(
            children: [
              Container(
                width: screenWidth,
                child: Column(
                  children: [
                    CarouselSlider(
                      carouselController: _controller,
                      options: CarouselOptions(
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            activeIndex = index;
                          });
                        },
                      ),
                      items: [
                        advantagesMobileWidget(
                          hasImage: false,
                          header: 'Преимущества',
                          screenWidth: screenWidth,
                          text:
                              'Мы разработали наиболее удобный интерфейс для работы с вилками. Многолетний опыт в ставках, позволил учесть все потребности пользователей и недостатки иных вилочных сервисов. Современный и интуитивный дизайн сделает Вашу работу проще и быстрее.',
                          title: 'Удобный интерфейс',
                        ),
                        advantagesMobileWidget(
                          hasImage: false,
                          header: 'Преимущества',
                          screenWidth: screenWidth,
                          text:
                              'В нашем приложении предусмотрен встроенный VPN. Это позволит вам всегда иметь доступ к любому букмекеру без перебоев в соединении. Также VPN позволит избегать блокировки подключения к букмекеру с вашего IP-адреса, обеспечит безопасность работы и конфиденциальность ваших персональных данных.',
                          title: 'Встроенный Vpn',
                        ),
                        advantagesMobileWidget(
                          hasImage: false,
                          header: 'Преимущества',
                          screenWidth: screenWidth,
                          text:
                              'В приложении предусмотрена функция контроля трафика VPN.В случае, если вы не используете приложение более 15 минут система автоматически разорвёт соединение. Данная функция позволяет избежать блокировки IP-адреса со стороны букмекерской конторы.',
                          title: 'Экономия трафика',
                        ),
                        advantagesMobileWidget(
                          hasImage: false,
                          header: 'Преимущества',
                          screenWidth: screenWidth,
                          text:
                              'Скорость обработки запроса пользователя — один из главных приоритетов Betbitrix. Усовершенствованная архитектура приложения в совокупности с применением самых современных технологий при разработке, позволило достичь высокого прироста производительности, в сравнении с конкурентами.',
                          title: 'Быстродействие приложения',
                        ),
                      ].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return i;
                          },
                        );
                      }).toList(),
                    ),
                    SizedBox(
                      height: screenWidth * 0.06,
                    ),
                    AnimatedSmoothIndicator(
                      activeIndex: activeIndex,
                      count: 4,
                      effect: WormEffect(
                        activeDotColor: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
