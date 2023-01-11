import 'package:bet_bitrix/utils/colors_repository.dart';
import 'package:bet_bitrix/widgets/footer_desctop.dart';
import 'package:bet_bitrix/widgets/main_desctop/price_widget.dart';
import 'package:flutter/material.dart';

class ProfilePaymentWidget extends StatelessWidget {
  const ProfilePaymentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double paddingHorizontal = MediaQuery.of(context).size.width * 0.11;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: paddingHorizontal, vertical: paddingHorizontal / 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Тарифный план',
                  style: TextStyle(
                      fontSize: screenWidth * 0.012, color: CustomColors.blue),
                ),
                SizedBox(
                  height: screenWidth * 0.005,
                ),
                Container(
                  width: screenWidth,
                  height: 1,
                  color: CustomColors.blue,
                ),
                SizedBox(
                  height: screenWidth * 0.015,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    priceWidget(screenWidth, 'Недельный', '1', '1 нед', '2900'),
                    priceWidgetLined(
                        screenWidth, 'Месячный', '2', '1 мес', '9900', '11900'),
                    priceWidgetLined(screenWidth, 'Квартальный', '3', '3 мес',
                        '24900', '35900'),
                  ],
                ),
                SizedBox(
                  height: screenWidth * 0.030,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: screenWidth * 0.25,
                      child: Text(
                        'Покупая подписку, вы принимаете условия Лицензионного договора.',
                        style: TextStyle(
                            fontSize: screenWidth * 0.009,
                            color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.5,
                      child: Image.asset(
                        'assets/images/image16.png',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          FooterDesctop()
        ],
      ),
    ));
  }
}
