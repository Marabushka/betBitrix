import 'package:bet_bitrix/widgets/main_mobile/advantages_widget.dart';
import 'package:bet_bitrix/widgets/main_mobile/main_mobile_widget.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainMobileAdwantages extends StatefulWidget {
  MainMobileAdwantages({Key? key}) : super(key: key);

  @override
  State<MainMobileAdwantages> createState() => _MainMobileAdwantagesState();
}

class _MainMobileAdwantagesState extends State<MainMobileAdwantages> {
  int activeIndexAdvantages = 0;
  final _controllerAdvantages = CarouselController();
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              // Container(
              //   width: screenWidth * 0.88,
              //   height: screenWidth * 0.65,
              //   child: Image.asset(
              //     'assets/images/Rectangle84.png',
              //     fit: BoxFit.contain,
              //   ),
              // ),
              Container(
                width: screenWidth,
                child: Column(
                  children: [
                    CarouselSlider(
                      carouselController: _controllerAdvantages,
                      options: CarouselOptions(
                        viewportFraction: 1,
                        height: screenWidth,
                        onPageChanged: (index, reason) {
                          setState(() {
                            activeIndexAdvantages = index;
                          });
                        },
                      ),
                      items: [
                        advantagesMobileWidget(
                          hasImage: true,
                          header: 'О приложении',
                          screenWidth: screenWidth,
                          text:
                              'Программное обеспечение Betbitrix позволяет искать, проверять и делать ставки на вилки у большого числа букмекерских контор. Ведение статистики, встроенный браузер, vpn и многое другое обеспечит комфортную работу со ставками.',
                          title: 'Основные функции',
                        ),
                        advantagesMobileWidget(
                          hasImage: true,
                          header: 'О приложении',
                          screenWidth: screenWidth,
                          text:
                              'Основной инструмент для работы с вилками. Калькулятор позволяет настраивать параметры вилки и сразуже делать ставку. Наш алгоритм помогает вам устанавливать коэффициенты и суммы ставокв оптимальном соотношении.',
                          title: 'Калькулятор',
                        ),
                        advantagesMobileWidget(
                          hasImage: true,
                          header: 'О приложении',
                          screenWidth: screenWidth,
                          text:
                              'Усовершенствованная архитектура поиска вилок позволяет находить с большей скоростью и точночтью наиболее выгодные варианты. Благодаря системе умной фильтрации отображаются лишь самые актуальныеи прибыльные ставки.',
                          title: 'Улучшенный сканер',
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
                      activeIndex: activeIndexAdvantages,
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
        ),
      ),
    );
  }
}
