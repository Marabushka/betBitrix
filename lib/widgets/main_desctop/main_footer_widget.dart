import 'package:bet_bitrix/utils/colors_repository.dart';
import 'package:bet_bitrix/widgets/footer_desctop.dart';
import 'package:bet_bitrix/widgets/main_desctop/personalise_widget.dart';
import 'package:flutter/material.dart';

ClipPath MainFootterWidget(
    double screenWidth, double paddingHorizontal, double screenHeight) {
  return ClipPath(
    clipper: CustomClipPathEndPage(),
    child: Container(
      width: screenWidth,
      color: Colors.blue.withOpacity(0.1),
      child: Column(
        children: [
          Padding(
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
                        'Обучение',
                        style: TextStyle(
                            fontSize: screenWidth * 0.011,
                            color: CustomColors.blue),
                      ),
                      SizedBox(
                        height: screenWidth * 0.006,
                      ),
                      Text(
                        'Мы разработали специальные курсы по',
                        style: TextStyle(
                            fontSize: screenWidth * 0.012,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'обучению успешным вилочным ставкам',
                        style: TextStyle(
                            fontSize: screenWidth * 0.012,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: screenWidth * 0.006,
                      ),
                      Text(
                        'Гибкие настройки приложения дают возможность',
                        style: TextStyle(
                          fontSize: screenWidth * 0.011,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                      Text(
                        'подстроить рабочее место под себя: выбирайте',
                        style: TextStyle(
                          fontSize: screenWidth * 0.011,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                      Text(
                        'букмекеров, настраивайте VPN, исключайте',
                        style: TextStyle(
                          fontSize: screenWidth * 0.011,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                      Text(
                        'неинтерсующие виды спорта, устанавливайте ограничения',
                        style: TextStyle(
                          fontSize: screenWidth * 0.011,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                      Text(
                        'на доход от вилки и её коэффициент, а также множество',
                        style: TextStyle(
                          fontSize: screenWidth * 0.011,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                      Text(
                        'других настроек для вашего удобства',
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
                          ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Записаться',
                                style: TextStyle(fontSize: screenWidth * 0.011),
                              )),
                          SizedBox(
                            width: screenWidth * 0.03,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text(
                                  'Подробнее',
                                  style:
                                      TextStyle(fontSize: screenWidth * 0.011),
                                ),
                                Icon(Icons.arrow_forward_outlined)
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: screenWidth * 0.39,
                  height: screenHeight * 0.40,
                  child: Image.asset(
                    'assets/images/Rectangle 113.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          FooterDesctop(),
        ],
      ),
    ),
  );
}
