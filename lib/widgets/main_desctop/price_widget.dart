import 'package:bet_bitrix/utils/colors_repository.dart';
import 'package:bet_bitrix/utils/icons.dart';
import 'package:flutter/material.dart';

Widget priceWidgetLined(double width, String type, String freezCount,
    String subscriptionCount, String price, String priceLined) {
  return Container(
    height: width * 0.29,
    width: width * 0.24,
    decoration: BoxDecoration(
      color: CustomColors.lightBlue,
      borderRadius: BorderRadius.all(Radius.circular(
              width * 0.007) //                 <--- border radius here
          ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.circle,
          color: CustomColors.blue,
          size: width * 0.011,
        ),
        Text(
          type,
          style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: width * 0.016),
        ),
        Container(
          height: width * 0.0013,
          width: width * 0.013,
          color: CustomColors.blue,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    CustomIcon.snow,
                    color: CustomColors.blue,
                    size: width * 0.011,
                  ),
                  SizedBox(
                    width: width * 0.005,
                  ),
                  Text(
                    'Заморозок:',
                    style: TextStyle(
                      color: CustomColors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.011,
                    ),
                  )
                ],
              ),
              Text(
                '$freezCount шт.',
                style: TextStyle(
                  color: CustomColors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: width * 0.011,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    CustomIcon.clock,
                    color: CustomColors.blue,
                    size: width * 0.011,
                  ),
                  SizedBox(
                    width: width * 0.005,
                  ),
                  Text(
                    'Срок подписки:',
                    style: TextStyle(
                      color: CustomColors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.011,
                    ),
                  )
                ],
              ),
              Text('$subscriptionCount .',
                  style: TextStyle(
                    color: CustomColors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: width * 0.011,
                  ))
            ],
          ),
        ),
        Container(
          height: 2,
          width: width * 0.152,
          color: Colors.grey,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Text(
                      '$priceLined',
                      style: TextStyle(
                          fontSize: width * 0.014, color: Colors.grey),
                    ),
                    Container(
                      width: width * 0.035,
                      height: width * 0.015,
                      child: CustomPaint(painter: LinePainter()),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            SizedBox(
              width: width * 0.005,
            ),
            Text(
              '$price ₽',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: width * 0.016),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            'Купить',
            style: TextStyle(
              color: Colors.white,
              fontSize: width * 0.011,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget priceWidget(double width, String type, String freezCount,
    String subscriptionCount, String price) {
  return Container(
    height: width * 0.29,
    width: width * 0.24,
    decoration: BoxDecoration(
      color: CustomColors.lightBlue,
      borderRadius: BorderRadius.all(Radius.circular(
              width * 0.007) //                 <--- border radius here
          ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.circle,
          color: CustomColors.blue,
          size: width * 0.011,
        ),
        Text(
          type,
          style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: width * 0.016),
        ),
        Container(
          height: width * 0.0013,
          width: width * 0.013,
          color: CustomColors.blue,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    CustomIcon.snow,
                    color: CustomColors.blue,
                    size: width * 0.011,
                  ),
                  SizedBox(
                    width: width * 0.005,
                  ),
                  Text(
                    'Заморозок:',
                    style: TextStyle(
                      color: CustomColors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.011,
                    ),
                  )
                ],
              ),
              Text(
                '$freezCount шт.',
                style: TextStyle(
                  color: CustomColors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: width * 0.011,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    CustomIcon.clock,
                    color: CustomColors.blue,
                    size: width * 0.011,
                  ),
                  SizedBox(
                    width: width * 0.005,
                  ),
                  Text(
                    'Срок подписки:',
                    style: TextStyle(
                      color: CustomColors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.011,
                    ),
                  )
                ],
              ),
              Text('$subscriptionCount .',
                  style: TextStyle(
                    color: CustomColors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: width * 0.011,
                  ))
            ],
          ),
        ),
        Container(
          height: 2,
          width: width * 0.152,
          color: Colors.grey,
        ),
        Text(
          '$price ₽',
          style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: width * 0.016),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            'Купить',
            style: TextStyle(
              color: Colors.white,
              fontSize: width * 0.011,
            ),
          ),
        ),
      ],
    ),
  );
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final p1 = Offset(size.width, 0);
    final p2 = Offset(0, size.height);
    final paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 1;
    canvas.drawLine(p1, p2, paint);
  }

  @override
  bool shouldRepaint(LinePainter oldDelegate) => false;
}
