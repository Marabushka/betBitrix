import 'package:bet_bitrix/utils/colors_repository.dart';
import 'package:bet_bitrix/utils/icons.dart';
import 'package:bet_bitrix/widgets/main_desctop/advantages_widget.dart';
import 'package:bet_bitrix/widgets/main_desctop/container_button_widget.dart';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AboutButtonsWidget extends StatefulWidget {
  AboutButtonsWidget({Key? key}) : super(key: key);

  @override
  State<AboutButtonsWidget> createState() => _AboutButtonsWidgetState();
}

class _AboutButtonsWidgetState extends State<AboutButtonsWidget> {
  int activeIndex = 0;
  final _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double paddingHorizontal = MediaQuery.of(context).size.width * 0.11;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: screenWidth * 0.34,
            height: screenWidth * 0.32,
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          activeIndex = 0;
                          _controller.jumpToPage(0);
                        });
                      },
                      child: activeIndex == 0
                          ? ContainerButton(screenWidth, 'Удобный интерфейс',
                              CustomIcon.tv, true)
                          : ContainerButton(screenWidth, 'Удобный интерфейс',
                              CustomIcon.tv, false),
                    ),
                    SizedBox(
                      height: screenWidth * 0.012,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          activeIndex = 2;
                          _controller.jumpToPage(2);
                        });
                      },
                      child: activeIndex == 2
                          ? ContainerButton(screenWidth, 'Экономия трафика',
                              CustomIcon.percent, true)
                          : ContainerButton(screenWidth, 'Экономия трафика',
                              CustomIcon.percent, false),
                    ),
                  ],
                ),
                SizedBox(
                  width: screenWidth * 0.024,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            activeIndex = 1;
                            _controller.jumpToPage(1);
                          });
                        },
                        child: activeIndex == 1
                            ? ContainerButton(screenWidth, 'Встроенный VPN',
                                CustomIcon.vifi, true)
                            : ContainerButton(screenWidth, 'Встроенный VPN',
                                CustomIcon.vifi, false)),
                    SizedBox(
                      height: screenWidth * 0.012,
                    ),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            activeIndex = 3;
                            _controller.jumpToPage(3);
                          });
                        },
                        child: activeIndex == 3
                            ? ContainerButton(
                                screenWidth,
                                'Быстродействие приложения',
                                CustomIcon.scheme,
                                true)
                            : ContainerButton(
                                screenWidth,
                                'Быстродействие приложения',
                                CustomIcon.scheme,
                                false)),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                width: screenWidth * 0.39,
                child: CarouselSlider(
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
                    advantagesWidget(
                      header: 'О приложении',
                      screenWidth: screenWidth,
                      text:
                          'Мы разработали наиболее удобный интерфейс для работы с вилками. Многолетний опыт в ставках, позволил учесть все потребности пользователей и недостатки иных вилочных сервисов. Современный и интуитивный дизайн сделает Вашу работу проще и быстрее.',
                      title: 'Удобный интерфейс',
                    ),
                    advantagesWidget(
                      header: 'О приложении',
                      screenWidth: screenWidth,
                      text:
                          'В нашем приложении предусмотрен встроенный VPN. Это позволит вам всегда иметь доступ к любому букмекеру без перебоев в соединении. Также VPN позволит избегать блокировки подключения к букмекеру с вашего IP-адреса, обеспечит безопасность работы и конфиденциальность ваших персональных данных.',
                      title: 'Встроенный Vpn',
                    ),
                    advantagesWidget(
                      header: 'О приложении',
                      screenWidth: screenWidth,
                      text:
                          'В приложении предусмотрена функция контроля трафика VPN.В случае, если вы не используете приложение более 15 минут система автоматически разорвёт соединение. Данная функция позволяет избежать блокировки IP-адреса со стороны букмекерской конторы.',
                      title: 'Экономия трафика',
                    ),
                    advantagesWidget(
                      header: 'О приложении',
                      screenWidth: screenWidth,
                      text:
                          'Скорость обработки запроса пользователя — один из главных приоритетов Betbitrix. Усовершенствованная архитектура приложения в совокупности с применением самых современных технологий при разработке, позволило достичь высокого прироста производительности, в сравнении с конкурентами.',
                      title: 'Быстродействие приложения',
                    ),
                  ].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: screenWidth * 0.39,
                          height: screenWidth * 0.32,
                          child: i,
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.34,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              _controller.previousPage();
                            },
                            icon: Icon(
                              Icons.arrow_back_outlined,
                              color: CustomColors.blue,
                            )),
                        IconButton(
                            onPressed: () {
                              _controller.nextPage();
                            },
                            icon: Icon(
                              Icons.arrow_forward_outlined,
                              color: CustomColors.blue,
                            )),
                        SizedBox(
                          width: screenWidth * 0.03,
                        ),
                      ],
                    ),
                    AnimatedSmoothIndicator(
                      activeIndex: activeIndex,
                      count: 4,
                      effect: WormEffect(
                        activeDotColor: CustomColors.blue,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
