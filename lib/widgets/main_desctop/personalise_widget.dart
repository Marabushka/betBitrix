import 'package:bet_bitrix/utils/colors_repository.dart';
import 'package:bet_bitrix/widgets/main_desctop/advantages_widget.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PersonaliseWidget extends StatefulWidget {
  PersonaliseWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<PersonaliseWidget> createState() => _PersonaliseWidgetState();
}

class _PersonaliseWidgetState extends State<PersonaliseWidget> {
  int activeIndex = 0;
  int activeIndexAdvantages = 0;
  int activeIndexAbout = 0;
  final _controller = CarouselController();
  final _controllerAdvantages = CarouselController();
  final _controllerAbout = CarouselController();
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
                        carouselController: _controllerAbout,
                        options: CarouselOptions(
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              activeIndexAbout = index;
                            });
                          },
                        ),
                        items: [
                          advantagesWidget(
                            header: 'О приложении',
                            screenWidth: screenWidth,
                            text:
                                'Гибкие настройки приложения дают возможность подстроить рабочее место под себя: выбирайте букмекеров, настраивайте VPN, исключайте неинтерсующие виды спорта, устанавливайте ограничения на доход от вилки и её коэффициент, а также множество других настроек для вашего удобства',
                            title: 'Персонализация',
                          ),
                          advantagesWidget(
                            header: 'О приложении',
                            screenWidth: screenWidth,
                            text:
                                'Для вашего удобства мы предусмотрели встроенный браузер в приложении, чтобы вы смогли быстро перейти на сайт букмекера и проверить всю необходимую информацию. Две вкладки браузера, две ставки, одна вилка.',
                            title: 'Встроенный браузер',
                          ),
                          advantagesWidget(
                            header: 'О приложении',
                            screenWidth: screenWidth,
                            text:
                                'В приложении Betbitrix предусмотрены удобные инструменты для сбора аналитики сделанных ставок. Вам доступна статистика ставок по категорям, позволяющая оценить наиболее прибыльные виды спорта, а также фильтрация для более удобного анализа.',
                            title: 'Статистика',
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
                                  _controllerAbout.previousPage();
                                },
                                icon: Icon(
                                  Icons.arrow_back_outlined,
                                  color: CustomColors.blue,
                                )),
                            IconButton(
                                onPressed: () {
                                  _controllerAbout.nextPage();
                                },
                                icon: Icon(
                                  Icons.arrow_forward_outlined,
                                  color: CustomColors.blue,
                                )),
                          ],
                        ),
                        AnimatedSmoothIndicator(
                          activeIndex: activeIndexAbout,
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

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height * 0.1);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.9);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height * 0.1);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class CustomClipPathEndPage extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(size.width * 0.5, size.height * 0.1);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
