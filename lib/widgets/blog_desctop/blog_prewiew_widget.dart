import 'package:bet_bitrix/widgets/blog_mobile/blog_mobile_screen.dart';
import 'package:bet_bitrix/widgets/blog_mobile/blog_preview_mobile_screen.dart';
import 'package:bet_bitrix/widgets/blog_desctop/blog_screen.dart';
import 'package:bet_bitrix/widgets/footer_desctop.dart';
import 'package:flutter/material.dart';

class BlogPreviewScreen extends StatelessWidget {
  const BlogPreviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double paddingHorizontal = MediaQuery.of(context).size.width * 0.11;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: paddingHorizontal, vertical: paddingHorizontal / 3),
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
                            fontSize: screenWidth * 0.011, color: Colors.blue),
                      ),
                      SizedBox(
                        height: screenWidth * 0.006,
                      ),
                      Text(
                        'Особенности работы',
                        style: TextStyle(
                            fontSize: screenWidth * 0.024,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'с букмекерами',
                        style: TextStyle(
                            fontSize: screenWidth * 0.024,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'при помощи Betbitrix',
                        style: TextStyle(
                            fontSize: screenWidth * 0.024,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: screenWidth * 0.006,
                      ),
                      Text(
                        'Рассматриваем некоторые особенности работы с букмекерами при',
                        style: TextStyle(
                          fontSize: screenWidth * 0.011,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                      Text(
                        'использовании приложения Betbitrix для оптимизации работы.',
                        style: TextStyle(
                          fontSize: screenWidth * 0.011,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                      SizedBox(
                        height: screenWidth * 0.006,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BlogScreen()));
                        },
                        child: Row(
                          children: [
                            Text(
                              'Читать',
                              style: TextStyle(fontSize: screenWidth * 0.011),
                            ),
                            Icon(Icons.arrow_forward_outlined)
                          ],
                        ),
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
            padding: EdgeInsets.symmetric(
              horizontal: paddingHorizontal,
            ),
            child: GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 6,
                //padding: const EdgeInsets.all(4.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.7,
                  mainAxisSpacing: screenWidth * 0.005,
                  crossAxisSpacing: screenWidth * 0.023,
                ),
                itemBuilder: (context, index) {
                  return blogPreviewWidget(
                    context,
                    screenWidth,
                    'assets/images/Rectangle 99.png',
                    'Есть над чем задуматься: действия представителей оппозиции набирают популярность среди определенных слоев населения, а значит, должны быть своевременно верифицированы. ',
                    '20 мая 2022',
                  );
                }),
          ),
          FooterDesctop(),
        ],
      ),
    );
  }
}

Widget blogPreviewWidget(
  BuildContext context,
  double width,
  String imagePath,
  String description,
  String date,
  //Future<dynamic> onPressed,
) {
  return Container(
    width: width * 0.24,
    height: width * 0.37,
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        width: width * 0.24,
        height: width * 0.208,
        child: Image.asset(
          imagePath,
          fit: BoxFit.contain,
        ),
      ),
      Text(
        date,
        style: TextStyle(
          fontSize: width * 0.011,
          color: Colors.blue,
        ),
      ),
      Text(
        description,
        maxLines: 5,
        style: TextStyle(
          fontSize: width * 0.0115,
          color: Colors.black.withOpacity(0.6),
        ),
      ),
      TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => BlogScreen()));
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Читать',
              style: TextStyle(fontSize: width * 0.011),
            ),
            Icon(Icons.arrow_forward_outlined)
          ],
        ),
      ),
    ]),
  );
}
