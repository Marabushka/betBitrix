import 'package:bet_bitrix/utils/colors_repository.dart';
import 'package:bet_bitrix/utils/icons.dart';
import 'package:flutter/material.dart';

Column TarifsMobilePaintLogo(double screenWidth) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset(
        'assets/images/Vector.png',
      ),
      SizedBox(
        height: screenWidth * 0.02,
      ),
      Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            width: screenWidth * 0.575,
            height: screenWidth * 0.0014,
            color: Colors.grey,
          ),
          Container(
            width: screenWidth * 0.575,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: screenWidth * 0.0014,
                  height: screenWidth * 0.05,
                  color: Colors.grey,
                ),
                Container(
                  width: screenWidth * 0.0014,
                  height: screenWidth * 0.1,
                  color: Colors.grey,
                ),
                Container(
                  width: screenWidth * 0.0014,
                  height: screenWidth * 0.05,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
      SizedBox(
        height: screenWidth * 0.02,
      ),
      Container(
        width: screenWidth * 0.686,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(screenWidth * 0.01),
                        color: CustomColors.lightBlue,
                      ),
                      width: screenWidth * 0.11,
                      height: screenWidth * 0.11,
                    ),
                    Container(
                      width: screenWidth * 0.086,
                      height: screenWidth * 0.086,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(screenWidth * 0.01),
                        color: CustomColors.beige,
                      ),
                    ),
                    Icon(
                      CustomIcon.calc,
                      color: Colors.blue,
                      size: 0.06 * screenWidth,
                    )
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(screenWidth * 0.01),
                        color: CustomColors.lightBlue,
                      ),
                      width: screenWidth * 0.11,
                      height: screenWidth * 0.11,
                    ),
                    Container(
                      width: screenWidth * 0.086,
                      height: screenWidth * 0.086,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(screenWidth * 0.01),
                        color: CustomColors.beige,
                      ),
                    ),
                    Icon(
                      CustomIcon.graph,
                      color: Colors.blue,
                      size: 0.06 * screenWidth,
                    )
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(screenWidth * 0.01),
                        color: CustomColors.lightBlue,
                      ),
                      width: screenWidth * 0.11,
                      height: screenWidth * 0.11,
                    ),
                    Container(
                      width: screenWidth * 0.086,
                      height: screenWidth * 0.086,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(screenWidth * 0.01),
                        color: CustomColors.beige,
                      ),
                    ),
                    Icon(
                      CustomIcon.scheme,
                      color: Colors.blue,
                      size: 0.06 * screenWidth,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
