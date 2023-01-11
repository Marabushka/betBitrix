import 'package:bet_bitrix/widgets/blog_mobile/blog_mobile_description.dart';
import 'package:bet_bitrix/widgets/blog_mobile/blog_preview_mobile.dart';

import 'package:bet_bitrix/widgets/footer_mobile.dart';

import 'package:flutter/material.dart';

class BlogPreviewMobileWidget extends StatelessWidget {
  const BlogPreviewMobileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double paddingHorizontal = MediaQuery.of(context).size.width * 0.055;
    return Scaffold(
      body: ListView(
        children: [
          BlogMobileDescription(screenWidth, paddingHorizontal, context),
          Padding(
              padding: EdgeInsets.symmetric(
                horizontal: paddingHorizontal,
              ),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return blogPreviewMobile(
                    context,
                    screenWidth * 4,
                    'assets/images/Rectangle 99.png',
                    'Есть над чем задуматься: действия представителей оппозиции набирают популярность среди определенных слоев населения, а значит, должны быть своевременно верифицированы. ',
                    '20 мая 2022',
                  );
                },
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 8,
              )),
          const FooterMobile(),
        ],
      ),
    );
  }
}
