import 'package:bet_bitrix/widgets/footer_mobile.dart';
import 'package:bet_bitrix/widgets/main_mobile/main_about_mobile.dart';
import 'package:bet_bitrix/widgets/main_mobile/main_mobile_adwantages.dart';
import 'package:bet_bitrix/widgets/main_mobile/main_mobile_buttons.dart';
import 'package:bet_bitrix/widgets/main_mobile/main_mobile_footer.dart';
import 'package:bet_bitrix/widgets/main_mobile/main_mobile_header.dart';
import 'package:bet_bitrix/widgets/main_mobile/main_mobile_price.dart';
import 'package:flutter/material.dart';

class MainMobileScreen extends StatefulWidget {
  const MainMobileScreen({Key? key}) : super(key: key);

  @override
  State<MainMobileScreen> createState() => _MainMobileScreenState();
}

class _MainMobileScreenState extends State<MainMobileScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double paddingHorizontal = MediaQuery.of(context).size.width * 0.055;
    return SingleChildScrollView(
      child: Column(
        children: [
          MainMobileHeader(screenWidth, paddingHorizontal),
          MainMobileAdwantages(),
          MainMobileButtonsWidget(),
          MainMobileAboutWidget(),
          MainMobilePriceWidget(paddingHorizontal, screenWidth),
          MainMobileFooter(paddingHorizontal, screenWidth),
          const FooterMobile(),
        ],
      ),
    );
  }
}

class CustomMobileClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height * 0.04);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.96);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height * 0.04);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
