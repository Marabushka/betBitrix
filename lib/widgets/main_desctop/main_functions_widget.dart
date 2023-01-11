import 'package:bet_bitrix/utils/colors_repository.dart';
import 'package:bet_bitrix/widgets/footer_desctop.dart';
import 'package:bet_bitrix/widgets/main_desctop/advantages_widget.dart';
import 'package:bet_bitrix/widgets/main_desctop/personalise_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainFunctionsWidget extends StatefulWidget {
  MainFunctionsWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<MainFunctionsWidget> createState() => _MainFunctionsWidgetState();
}

class _MainFunctionsWidgetState extends State<MainFunctionsWidget> {
  final _controllerAdvantages = CarouselController();
  int activeIndexAdvantages = 0;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double paddingHorizontal = MediaQuery.of(context).size.width * 0.11;
    return ClipPath(
      clipper: CustomClipPath(),
      child: Container(
        height: screenWidth * 0.31,
        width: screenWidth,
        color: Colors.blue.withOpacity(0.1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: paddingHorizontal),
              child: Container(
                width: screenWidth * 0.34,
                height: screenWidth * 0.32,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: screenWidth * 0.006,
                    ),
                    Container(
                      width: screenWidth * 0.39,
                      child: CarouselSlider(
                        carouselController: _controllerAdvantages,
                        options: CarouselOptions(
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              activeIndexAdvantages = index;
                            });
                          },
                        ),
                        items: [
                          advantagesWidget(
                            header: 'Преимущества',
                            screenWidth: screenWidth,
                            text:
                                'Программное обеспечение Betbitrix позволяет искать, проверять и делать ставки на вилки у большого числа букмекерских контор. Ведение статистики, встроенный браузер, vpn и многое другое обеспечит комфортную работу со ставками.',
                            title: 'Основные функции',
                          ),
                          advantagesWidget(
                            header: 'Преимущества',
                            screenWidth: screenWidth,
                            text:
                                'Основной инструмент для работы с вилками. Калькулятор позволяет настраивать параметры вилки и сразуже делать ставку. Наш алгоритм помогает вам устанавливать коэффициенты и суммы ставокв оптимальном соотношении.',
                            title: 'Калькулятор',
                          ),
                          advantagesWidget(
                            header: 'Преимущества',
                            screenWidth: screenWidth,
                            text:
                                'Усовершенствованная архитектура поиска вилок позволяет находить с большей скоростью и точночтью наиболее выгодные варианты. Благодаря системе умной фильтрации отображаются лишь самые актуальныеи прибыльные ставки.',
                            title: 'Улучшенный сканер',
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
                      height: screenWidth * 0.006,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  _controllerAdvantages.previousPage();
                                },
                                icon: Icon(
                                  Icons.arrow_back_outlined,
                                  color: CustomColors.blue,
                                )),
                            IconButton(
                                onPressed: () {
                                  _controllerAdvantages.nextPage();
                                },
                                icon: Icon(
                                  Icons.arrow_forward_outlined,
                                  color: CustomColors.blue,
                                )),
                          ],
                        ),
                        AnimatedSmoothIndicator(
                          activeIndex: activeIndexAdvantages,
                          count: 3,
                          effect: WormEffect(
                            activeDotColor: CustomColors.blue,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: paddingHorizontal),
              child: Container(
                width: screenWidth * 0.39,
                height: screenWidth * 0.40,
                child: Image.asset(
                  'assets/images/Rectangle84.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
