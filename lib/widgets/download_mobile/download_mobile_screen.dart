import 'package:bet_bitrix/widgets/download_mobile/download_mobile_header.dart';
import 'package:bet_bitrix/widgets/download_mobile/download_mobile_instructions.dart';
import 'package:bet_bitrix/widgets/download_mobile/download_mobile_requirements.dart';
import 'package:bet_bitrix/widgets/download_mobile/download_mobile_update.dart';
import 'package:bet_bitrix/widgets/footer_mobile.dart';

import 'package:flutter/material.dart';

class DounloadMobileWidget extends StatelessWidget {
  const DounloadMobileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double paddingHorizontal = MediaQuery.of(context).size.width * 0.055;
    return SingleChildScrollView(
      child: Column(
        children: [
          DownloadMobileHeader(screenWidth, paddingHorizontal),
          DownloadMobileUpdate(screenWidth, paddingHorizontal),
          DownloadMobileRequrements(paddingHorizontal, screenWidth),
          DownloadMobileInstructions(screenWidth, paddingHorizontal),
          const FooterMobile()
        ],
      ),
    );
  }
}
