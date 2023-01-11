import 'package:bet_bitrix/widgets/footer_mobile.dart';
import 'package:bet_bitrix/widgets/tarifs_mobile/tarifs_mobile_description.dart';
import 'package:bet_bitrix/widgets/tarifs_mobile/tarifs_mobile_header.dart';
import 'package:bet_bitrix/widgets/tarifs_mobile/tarifs_mobile_paint_logo.dart';
import 'package:bet_bitrix/widgets/tarifs_mobile/tarifs_mobile_price.dart';
import 'package:flutter/material.dart';

class TarifsMobileWidget extends StatelessWidget {
  const TarifsMobileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double paddingHorizontal = MediaQuery.of(context).size.width * 0.055;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          TarifsMobileHeader(screenWidth, paddingHorizontal),
          TarifsMobilePrice(paddingHorizontal, screenWidth),
          TarifsMobilePaintLogo(screenWidth),
          TarifsMobileDescription(paddingHorizontal, screenWidth),
          const FooterMobile()
        ],
      ),
    ));
  }
}
