import 'package:bet_bitrix/widgets/footer_desctop.dart';
import 'package:flutter/material.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double paddingHorizontal = MediaQuery.of(context).size.width * 0.11;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      floatingActionButton: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: paddingHorizontal,
                  vertical: paddingHorizontal / 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '25 мая 2022',
                          style: TextStyle(
                              fontSize: screenWidth * 0.011,
                              color: Colors.blue),
                        ),
                        SizedBox(
                          height: screenWidth * 0.006,
                        ),
                        Text(
                          'Особенности работы',
                          style: TextStyle(
                              fontSize: screenWidth * 0.033,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'с букмекерами',
                          style: TextStyle(
                              fontSize: screenWidth * 0.033,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'при помощи Betbitrix',
                          style: TextStyle(
                              fontSize: screenWidth * 0.033,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: screenWidth * 0.375,
                    height: screenWidth * 0.218,
                    child: Image.asset(
                      'assets/images/Rectangle 98.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.114,
                  right: screenWidth * 0.31,
                  top: paddingHorizontal / 6,
                  bottom: paddingHorizontal / 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Особенности работы',
                    style: TextStyle(
                        fontSize: screenWidth * 0.02,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: screenWidth * 0.012,
                  ),
                  Text(
                    'Есть над чем задуматься: интерактивные прототипы, которые представляют собой яркий пример континентально-европейского типа политической культуры, будут объявлены нарушающими общечеловеческие нормы этики и морали. В частности, экономическая повестка сегодняшнего дня предоставляет широкие возможности для переосмысления внешнеэкономических политик. Являясь всего лишь частью общей картины, явные',
                    style: TextStyle(
                      fontSize: screenWidth * 0.011,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                  SizedBox(
                    height: screenWidth * 0.012,
                  ),
                  Text(
                    'Сложно сказать, почему представители современных социальных резервов набирают популярность среди определенных слоев населения, а значит, должны быть заблокированы в рамках своих собственных рациональных ограничений. Имеется спорная точка зрения, гласящая примерно следующее: акционеры крупнейших компаний подвергнуты целой серии независимых исследований.',
                    style: TextStyle(
                      fontSize: screenWidth * 0.011,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                  SizedBox(
                    height: screenWidth * 0.012,
                  ),
                  Text(
                    'Разнообразный и богатый опыт говорит нам, что сложившаяся структура организации, а также свежий взгляд на привычные вещи - безусловно открывает новые горизонты для модели развития. С учётом сложившейся международной обстановки, разбавленное изрядной долей эмпатии, рациональное мышление обеспечивает широкому кругу (специалистов) участие в формировании инновационных методов управления процессами. Учитывая ключевые сценарии поведения, социально-экономическое развитие говорит о возможностях направлений прогрессивного развития',
                    style: TextStyle(
                      fontSize: screenWidth * 0.011,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                  SizedBox(
                    height: screenWidth * 0.012,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.circle,
                        color: Colors.blue,
                        size: screenWidth * 0.006,
                      ),
                      SizedBox(
                        width: screenWidth * 0.012,
                      ),
                      Expanded(
                        child: Text(
                          'Есть над чем задуматься: интерактивные прототипы, которые представляют собой яркий пример континентально-европейского типа политической культуры, будут объявлены нарушающими общечеловеческие нормы этики и морали.',
                          style: TextStyle(
                            fontSize: screenWidth * 0.011,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenWidth * 0.012,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.circle,
                        color: Colors.blue,
                        size: screenWidth * 0.006,
                      ),
                      SizedBox(
                        width: screenWidth * 0.012,
                      ),
                      Expanded(
                        child: Text(
                          'Разнообразный и богатый опыт говорит нам, что экономическая повестка сегодняшнего дня не оставляет шанса для укрепления моральных ценностей.',
                          style: TextStyle(
                            fontSize: screenWidth * 0.011,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenWidth * 0.012,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.circle,
                        color: Colors.blue,
                        size: screenWidth * 0.006,
                      ),
                      SizedBox(
                        width: screenWidth * 0.012,
                      ),
                      Expanded(
                        child: Text(
                          'Приятно, граждане, наблюдать, как диаграммы связей, которые представляют собой яркий пример континентально-европейского типа политической культуры, будут обнародованы.',
                          style: TextStyle(
                            fontSize: screenWidth * 0.011,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ),
                    ],
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
}
