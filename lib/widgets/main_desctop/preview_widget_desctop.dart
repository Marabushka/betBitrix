import 'package:bet_bitrix/utils/colors_repository.dart';
import 'package:flutter/material.dart';

class PreviewWidget extends StatelessWidget {
  const PreviewWidget({
    Key? key,
    required this.paddingHorizontal,
    required this.screenWidth,
  }) : super(key: key);

  final double paddingHorizontal;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  'Betbitrix app.',
                  style: TextStyle(
                      fontSize: screenWidth * 0.011, color: CustomColors.blue),
                ),
                SizedBox(
                  height: screenWidth * 0.006,
                ),
                Text(
                  'Вилочный сервис',
                  style: TextStyle(
                      fontSize: screenWidth * 0.033,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'для профессионалов',
                  style: TextStyle(
                      fontSize: screenWidth * 0.033,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: screenWidth * 0.006,
                ),
                Text(
                  'Универсальное решение для сканирования вилок,',
                  style: TextStyle(
                    fontSize: screenWidth * 0.011,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                Text(
                  'работы с букмекерами и сбора аналитики. Подходит',
                  style: TextStyle(
                    fontSize: screenWidth * 0.011,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                Text(
                  'для пользователя любого уровня подготовки.',
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
                          'Скачать',
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
                            style: TextStyle(fontSize: screenWidth * 0.011),
                          ),
                          Icon(Icons.arrow_forward_outlined)
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            width: screenWidth * 0.44,
            height: screenWidth * 0.32,
            child: AspectRatio(
              child: Image.asset(
                'assets/images/вар31.png',
                //fit: BoxFit.contain,
              ),
              aspectRatio: 1,
            ),
          ),
        ],
      ),
    );
  }
}
