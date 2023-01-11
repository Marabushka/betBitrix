import 'package:bet_bitrix/widgets/download_desctop/diwnload_header.dart';
import 'package:bet_bitrix/widgets/download_desctop/download_autorization.dart';
import 'package:bet_bitrix/widgets/download_desctop/download_bookmekers.dart';
import 'package:bet_bitrix/widgets/download_desctop/download_interface.dart';
import 'package:bet_bitrix/widgets/download_desctop/download_requirements.dart';
import 'package:bet_bitrix/widgets/download_desctop/download_start.dart';
import 'package:bet_bitrix/widgets/download_desctop/download_update.dart';
import 'package:bet_bitrix/widgets/footer_desctop.dart';

import 'package:flutter/material.dart';

class DownloadScreenWidget extends StatelessWidget {
  const DownloadScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double paddingHorizontal = MediaQuery.of(context).size.width * 0.11;
    return SingleChildScrollView(
        child: Column(
      children: [
        DownloadHeader(paddingHorizontal, screenWidth),
        DownloadUpdate(paddingHorizontal, screenWidth),
        DownloadRequirements(paddingHorizontal, screenWidth),
        DownloadStart(screenWidth, paddingHorizontal),
        DownloadAutorization(paddingHorizontal, screenWidth),
        DownloadBookmekers(screenWidth, paddingHorizontal),
        DownloadInterface(paddingHorizontal, screenWidth),
        FooterDesctop(),
      ],
    ));
  }
}
