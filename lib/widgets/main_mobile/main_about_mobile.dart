import 'package:bet_bitrix/widgets/main_mobile/advantages_widget.dart';
import 'package:bet_bitrix/widgets/main_mobile/main_mobile_widget.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainMobileAboutWidget extends StatefulWidget {
  MainMobileAboutWidget({Key? key}) : super(key: key);

  @override
  State<MainMobileAboutWidget> createState() => _MainMobileAboutWidgetState();
}

class _MainMobileAboutWidgetState extends State<MainMobileAboutWidget> {
  final _controllerAbout = CarouselController();
  int activeIndexAbout = 0;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double paddingHorizontal = MediaQuery.of(context).size.width * 0.055;
    return ClipPath(
      clipper: CustomMobileClipPath(),
      child: Container(
        width: screenWidth,
        color: Colors.blue.withOpacity(0.1),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: paddingHorizontal, vertical: paddingHorizontal * 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Container(
              //   width: screenWidth * 0.88,
              //   height: screenWidth * 0.65,
              //   child: Image.asset(
              //     'assets/images/Rectangle84.png',
              //     fit: BoxFit.contain,
              //   ),
              // ),
              Column(
                children: [
                  Container(
                    width: screenWidth,
                    child: Column(
                      children: [
                        CarouselSlider(
                          carouselController: _controllerAbout,
                          options: CarouselOptions(
                            disableCenter: true,
                            height: screenWidth,
                            viewportFraction: 1,
                            onPageChanged: (index, reason) {
                              setState(() {
                                activeIndexAbout = index;
                              });
                            },
                          ),
                          items: [
                            advantagesMobileWidget(
                              hasImage: true,
                              header: 'О приложении',
                              screenWidth: screenWidth,
                              text:
                                  'Гибкие настройки приложения дают возможность подстроить рабочее место под себя: выбирайте букмекеров, настраивайте VPN, исключайте неинтерсующие виды спорта, устанавливайте ограничения на доход от вилки и её коэффициент, а также множество других настроек для вашего удобства',
                              title: 'Персонализация',
                            ),
                            advantagesMobileWidget(
                              hasImage: true,
                              header: 'О приложении',
                              screenWidth: screenWidth,
                              text:
                                  'Для вашего удобства мы предусмотрели встроенный браузер в приложении, чтобы вы смогли быстро перейти на сайт букмекера и проверить всю необходимую информацию. Две вкладки браузера, две ставки, одна вилка.',
                              title: 'Встроенный браузер',
                            ),
                            advantagesMobileWidget(
                              hasImage: true,
                              header: 'О приложении',
                              screenWidth: screenWidth,
                              text:
                                  'В приложении Betbitrix предусмотрены удобные инструменты для сбора аналитики сделанных ставок. Вам доступна статистика ставок по категорям, позволяющая оценить наиболее прибыльные виды спорта, а также фильтрация для более удобного анализа.',
                              title: 'Статистика',
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
                          activeIndex: activeIndexAbout,
                          count: 3,
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
        ),
      ),
    );
  }
}
