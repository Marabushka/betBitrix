import 'package:bet_bitrix/utils/icons.dart';
import 'package:flutter/material.dart';

class ContactsQuestionsMobile extends StatefulWidget {
  ContactsQuestionsMobile({Key? key}) : super(key: key);

  @override
  State<ContactsQuestionsMobile> createState() =>
      _ContactsQuestionsMobileState();
}

class _ContactsQuestionsMobileState extends State<ContactsQuestionsMobile> {
  bool isOpen = false;
  bool isOpenSecond = false;
  bool isOpenThird = false;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double paddingHorizontal = MediaQuery.of(context).size.width * 0.055;
    return Container(
      width: screenWidth,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: paddingHorizontal, vertical: paddingHorizontal * 3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Часто задаваемые вопросы',
              style:
                  TextStyle(fontSize: screenWidth * 0.038, color: Colors.blue),
            ),
            SizedBox(
              height: screenWidth * 0.006,
            ),
            Text(
              'Возможно ваша проблема уже решена!',
              style: TextStyle(
                  fontSize: screenWidth * 0.05,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: screenWidth * 0.05,
            ),
            Container(
              width: screenWidth * 0.88,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        children: [
                          Icon(
                            CustomIcon.romb,
                            color: Colors.blue,
                            size: screenWidth * 0.03,
                          ),
                          Text(
                            '  Как сделать ставку, если моего',
                            style: TextStyle(
                              fontSize: screenWidth * 0.044,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      isOpen == false
                          ? IconButton(
                              onPressed: () {
                                setState(() {
                                  isOpen = true;
                                });
                              },
                              icon: Icon(
                                CustomIcon.arrow_down,
                                color: Colors.grey,
                                size: screenWidth * 0.015,
                              ),
                            )
                          : IconButton(
                              onPressed: () {
                                setState(() {
                                  isOpen = false;
                                });
                              },
                              icon: Icon(
                                CustomIcon.arrow_up,
                                color: Colors.grey,
                                size: screenWidth * 0.015,
                              ),
                            )
                    ],
                  ),
                  Text(
                    '     букмекера нет в списке?',
                    style: TextStyle(
                      fontSize: screenWidth * 0.044,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            isOpen == true
                ? Padding(
                    padding: EdgeInsets.only(
                      left: screenWidth * 0.024,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Как уже неоднократно упомянуто, многие известные личности',
                          style: TextStyle(
                            fontSize: screenWidth * 0.044,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        Text(
                          'формируют глобальную экономическую сеть и при этом -',
                          style: TextStyle(
                            fontSize: screenWidth * 0.044,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        Text(
                          'обнародованы. Внезапно, ключевые особенности структуры',
                          style: TextStyle(
                            fontSize: screenWidth * 0.044,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        Text(
                          'проекта будут в равной степени предоставлены сами себе! Мы',
                          style: TextStyle(
                            fontSize: screenWidth * 0.044,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        Text(
                          'вынуждены отталкиваться от того, что экономическая повестка',
                          style: TextStyle(
                            fontSize: screenWidth * 0.044,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        Text(
                          'сегодняшнего дня, а также свежий взгляд на привычные вещи -',
                          style: TextStyle(
                            fontSize: screenWidth * 0.044,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        Text(
                          'безусловно открывает новые горизонты для переосмысления',
                          style: TextStyle(
                            fontSize: screenWidth * 0.044,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        Text(
                          'нешнеэкономических политик.',
                          style: TextStyle(
                            fontSize: screenWidth * 0.044,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                  )
                : SizedBox.shrink(),
            SizedBox(
              height: screenWidth * 0.05,
            ),
            Container(
              width: screenWidth * 0.88,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        children: [
                          Icon(
                            CustomIcon.romb,
                            color: Colors.blue,
                            size: screenWidth * 0.03,
                          ),
                          Text(
                            '  Проблемы с отображением',
                            style: TextStyle(
                              fontSize: screenWidth * 0.044,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      isOpenSecond == false
                          ? IconButton(
                              onPressed: () {
                                setState(() {
                                  isOpenSecond = true;
                                });
                              },
                              icon: Icon(
                                CustomIcon.arrow_down,
                                color: Colors.grey,
                                size: screenWidth * 0.015,
                              ),
                            )
                          : IconButton(
                              onPressed: () {
                                setState(() {
                                  isOpenSecond = false;
                                });
                              },
                              icon: Icon(
                                CustomIcon.arrow_up,
                                color: Colors.grey,
                                size: screenWidth * 0.015,
                              ),
                            )
                    ],
                  ),
                  Text(
                    '     корректной статистики в',
                    style: TextStyle(
                      fontSize: screenWidth * 0.044,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '     профиле в приложении.',
                    style: TextStyle(
                      fontSize: screenWidth * 0.044,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            isOpenSecond == true
                ? Padding(
                    padding: EdgeInsets.only(
                      left: screenWidth * 0.024,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Как уже неоднократно упомянуто, многие известные личности',
                          style: TextStyle(
                            fontSize: screenWidth * 0.044,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        Text(
                          'формируют глобальную экономическую сеть и при этом -',
                          style: TextStyle(
                            fontSize: screenWidth * 0.044,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        Text(
                          'обнародованы. Внезапно, ключевые особенности структуры',
                          style: TextStyle(
                            fontSize: screenWidth * 0.044,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        Text(
                          'проекта будут в равной степени предоставлены сами себе! Мы',
                          style: TextStyle(
                            fontSize: screenWidth * 0.044,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        Text(
                          'вынуждены отталкиваться от того, что экономическая повестка',
                          style: TextStyle(
                            fontSize: screenWidth * 0.044,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        Text(
                          'сегодняшнего дня, а также свежий взгляд на привычные вещи -',
                          style: TextStyle(
                            fontSize: screenWidth * 0.044,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        Text(
                          'безусловно открывает новые горизонты для переосмысления',
                          style: TextStyle(
                            fontSize: screenWidth * 0.044,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        Text(
                          'нешнеэкономических политик.',
                          style: TextStyle(
                            fontSize: screenWidth * 0.044,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                  )
                : SizedBox.shrink(),
            SizedBox(
              height: screenWidth * 0.1,
            ),
            Container(
              width: screenWidth * 0.88,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        children: [
                          Icon(
                            CustomIcon.romb,
                            color: Colors.blue,
                            size: screenWidth * 0.03,
                          ),
                          Text(
                            '  Не получается сделать ставку',
                            style: TextStyle(
                              fontSize: screenWidth * 0.044,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      isOpenThird == false
                          ? IconButton(
                              onPressed: () {
                                setState(() {
                                  isOpenThird = true;
                                });
                              },
                              icon: Icon(
                                CustomIcon.arrow_down,
                                color: Colors.grey,
                                size: screenWidth * 0.015,
                              ),
                            )
                          : IconButton(
                              onPressed: () {
                                setState(() {
                                  isOpenThird = false;
                                });
                              },
                              icon: Icon(
                                CustomIcon.arrow_up,
                                color: Colors.grey,
                                size: screenWidth * 0.015,
                              ),
                            )
                    ],
                  ),
                  Text(
                    '     на событие в перерыве.',
                    style: TextStyle(
                      fontSize: screenWidth * 0.044,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            isOpenThird == true
                ? Padding(
                    padding: EdgeInsets.only(
                      left: screenWidth * 0.024,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Как уже неоднократно упомянуто, многие известные личности',
                          style: TextStyle(
                            fontSize: screenWidth * 0.044,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        Text(
                          'формируют глобальную экономическую сеть и при этом -',
                          style: TextStyle(
                            fontSize: screenWidth * 0.044,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        Text(
                          'обнародованы. Внезапно, ключевые особенности структуры',
                          style: TextStyle(
                            fontSize: screenWidth * 0.044,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        Text(
                          'проекта будут в равной степени предоставлены сами себе! Мы',
                          style: TextStyle(
                            fontSize: screenWidth * 0.044,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        Text(
                          'вынуждены отталкиваться от того, что экономическая повестка',
                          style: TextStyle(
                            fontSize: screenWidth * 0.044,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        Text(
                          'сегодняшнего дня, а также свежий взгляд на привычные вещи -',
                          style: TextStyle(
                            fontSize: screenWidth * 0.044,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        Text(
                          'безусловно открывает новые горизонты для переосмысления',
                          style: TextStyle(
                            fontSize: screenWidth * 0.044,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        Text(
                          'нешнеэкономических политик.',
                          style: TextStyle(
                            fontSize: screenWidth * 0.044,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                  )
                : SizedBox.shrink(),
            SizedBox(
              height: screenWidth * 0.05,
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Подробнее',
                      style: TextStyle(fontSize: screenWidth * 0.038),
                    ),
                    Icon(
                      Icons.arrow_forward_outlined,
                      size: screenWidth * 0.038,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
