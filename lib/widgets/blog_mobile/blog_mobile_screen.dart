import 'package:bet_bitrix/widgets/footer_mobile.dart';
import 'package:flutter/material.dart';

class BlogMobileScreenWidget extends StatelessWidget {
  const BlogMobileScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double paddingHorizontal = MediaQuery.of(context).size.width * 0.055;
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
        floatingActionButton: IconButton(
            onPressed: Navigator.of(context).pop, icon: Icon(Icons.arrow_back)),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: screenWidth,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: paddingHorizontal,
                      vertical: paddingHorizontal * 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '25 мая 2022',
                        style: TextStyle(
                            fontSize: screenWidth * 0.038, color: Colors.blue),
                      ),
                      SizedBox(
                        height: screenWidth * 0.006,
                      ),
                      Text(
                        'Особенности работы',
                        style: TextStyle(
                            fontSize: screenWidth * 0.066,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'с букмекерами',
                        style: TextStyle(
                            fontSize: screenWidth * 0.066,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'при помощи Betbitrix',
                        style: TextStyle(
                            fontSize: screenWidth * 0.066,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: screenWidth * 0.05,
                      ),
                      SizedBox(
                        width: screenWidth * 0.889,
                        height: screenWidth * 0.55,
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(screenWidth * 0.055),
                          child: Image.asset(
                            'assets/images/Rectangle 99.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenWidth * 0.05,
                      ),
                      Text(
                        'Есть над чем задуматься: интерактивные прототипы, которые представляют собой яркий пример континентально-европейского типа политической культуры, будут объявлены нарушающими общечеловеческие нормы этики и морали.',
                        style: TextStyle(
                          fontSize: screenWidth * 0.055,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                      SizedBox(
                        height: screenWidth * 0.05,
                      ),
                      Text(
                        'В частности, экономическая повестка сегодняшнего дня предоставляет широкие возможности для переосмысления внешнеэкономических политик. Являясь всего лишь частью общей картины, явные',
                        style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                      SizedBox(
                        height: screenWidth * 0.05,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: screenWidth * 0.01,
                              ),
                              Icon(
                                Icons.circle,
                                color: Colors.blue,
                                size: screenWidth * 0.03,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: screenWidth * 0.04,
                          ),
                          Expanded(
                            child: Text(
                              'Есть над чем задуматься: интерактивные прототипы, которые представляют собой яркий пример.',
                              style: TextStyle(
                                fontSize: screenWidth * 0.044,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenWidth * 0.05,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: screenWidth * 0.01,
                              ),
                              Icon(
                                Icons.circle,
                                color: Colors.blue,
                                size: screenWidth * 0.03,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: screenWidth * 0.04,
                          ),
                          Expanded(
                            child: Text(
                              'Разнообразный и богатый опыт говорит нам, что экономическая повестка сегодняшнего дня.',
                              style: TextStyle(
                                fontSize: screenWidth * 0.044,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenWidth * 0.05,
                      ),
                      Text(
                        'В частности, экономическая повестка сегодняшнего дня предоставляет широкие возможности для переосмысления внешнеэкономических политик. Являясь всего лишь частью общей картины, явные ',
                        style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const FooterMobile()
            ],
          ),
        ));
  }
}
