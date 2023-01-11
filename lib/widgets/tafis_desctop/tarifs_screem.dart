import 'package:bet_bitrix/widgets/footer_desctop.dart';

import 'package:bet_bitrix/widgets/tafis_desctop/tarifs_header.dart';
import 'package:bet_bitrix/widgets/tafis_desctop/tarifs_main_widget.dart';

import 'package:flutter/material.dart';

class TarifsScreenWidget extends StatelessWidget {
  const TarifsScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double paddingHorizontal = MediaQuery.of(context).size.width * 0.11;
    return SingleChildScrollView(
      child: Column(
        children: [
          TarifsHeader(screenWidth, paddingHorizontal),
          TarifsMainWidget(paddingHorizontal, screenWidth),
          FooterDesctop(),
        ],
      ),
    );
  }
}
