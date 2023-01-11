import 'package:bet_bitrix/widgets/main_desctop/about_buttons_widget.dart';
import 'package:bet_bitrix/widgets/main_desctop/main_footer_widget.dart';
import 'package:bet_bitrix/widgets/main_desctop/main_functions_widget.dart';
import 'package:bet_bitrix/widgets/main_desctop/personalise_widget.dart';
import 'package:bet_bitrix/widgets/main_desctop/preview_widget_desctop.dart';
import 'package:bet_bitrix/widgets/main_desctop/tarifs_main.dart';

import 'package:flutter/material.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double paddingHorizontal = MediaQuery.of(context).size.width * 0.11;
    return SingleChildScrollView(
      child: Column(
        children: [
          PreviewWidget(
              paddingHorizontal: paddingHorizontal, screenWidth: screenWidth),
          MainFunctionsWidget(),
          AboutButtonsWidget(),
          PersonaliseWidget(),
          TarifsWidget(screenWidth, paddingHorizontal),
          MainFootterWidget(screenWidth, paddingHorizontal, screenHeight),
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height * 0.1);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.9);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height * 0.1);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class CustomClipPathEndPage extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(size.width * 0.5, size.height * 0.1);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
