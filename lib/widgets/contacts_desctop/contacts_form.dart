import 'package:bet_bitrix/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsFormWidget extends StatefulWidget {
  ContactsFormWidget({Key? key}) : super(key: key);

  @override
  State<ContactsFormWidget> createState() => _ContactsFormWidgetState();
}

class _ContactsFormWidgetState extends State<ContactsFormWidget> {
  bool isOpen = false;
  bool isOpenSecond = false;
  bool isOpenThird = false;
  bool isOpenForth = false;
  bool isOpenFifth = false;
  bool agree = false;
  String? errorMessage;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController questionController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double paddingHorizontal = MediaQuery.of(context).size.width * 0.11;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenWidth * 0.006,
                ),
                Text(
                  'Форма обратной связи',
                  style: TextStyle(
                      fontSize: screenWidth * 0.016,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: screenWidth * 0.006,
                ),
                Text(
                  'Ваше имя',
                  style: TextStyle(
                      fontSize: screenWidth * 0.011,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: screenWidth * 0.01,
                ),
                Container(
                  width: screenWidth * 0.3,
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                        hintText: 'Имя',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        )),
                  ),
                ),
                SizedBox(
                  height: screenWidth * 0.02,
                ),
                Text(
                  'Тема обращения',
                  style: TextStyle(
                      fontSize: screenWidth * 0.011,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: screenWidth * 0.01,
                ),
                Container(
                  width: screenWidth * 0.3,
                  child: TextField(
                    controller: questionController,
                    decoration: const InputDecoration(
                        hintText: 'Вопрос',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        )),
                  ),
                ),
                SizedBox(
                  height: screenWidth * 0.02,
                ),
                Text(
                  'E-mail',
                  style: TextStyle(
                      fontSize: screenWidth * 0.011,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: screenWidth * 0.01,
                ),
                Container(
                  width: screenWidth * 0.3,
                  child: TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                        hintText: 'Email',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        )),
                  ),
                ),
                SizedBox(
                  height: screenWidth * 0.02,
                ),
                Text(
                  'Сообщение',
                  style: TextStyle(
                      fontSize: screenWidth * 0.011,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: screenWidth * 0.01,
                ),
                Container(
                  width: screenWidth * 0.3,
                  child: TextField(
                    controller: descriptionController,
                    minLines: 5,
                    maxLines: 10,
                    decoration: const InputDecoration(
                        hintText: 'Опишите ваш вопрос',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        )),
                  ),
                ),
                SizedBox(
                  height: screenWidth * 0.02,
                ),
                Container(
                  width: screenWidth * 0.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Прикрепить файл',
                            style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'jpeg, jpg, png, pdf до 2МБ',
                            style: TextStyle(
                                fontSize: screenWidth * 0.009,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CustomIcon.attachfile,
                          color: Colors.blue,
                          size: screenWidth * 0.02,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: screenWidth * 0.006,
                ),
                Container(
                  width: screenWidth * 0.32,
                  child: Row(
                    children: [
                      Checkbox(
                        value: agree,
                        onChanged: (value) {
                          setState(() {
                            agree = value ?? false;
                          });
                        },
                      ),
                      SizedBox(
                        width: screenWidth * 0.001,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Я ознакомлен с политикой конфиденциальности и даю согласие на',
                            style: TextStyle(
                                fontSize: screenWidth * 0.008,
                                color: Colors.black),
                          ),
                          Text(
                            'обработку моих персональных данных',
                            style: TextStyle(
                                fontSize: screenWidth * 0.008,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenWidth * 0.006,
                ),
                errorMessage == null
                    ? SizedBox.shrink()
                    : Text(
                        errorMessage!,
                        style: TextStyle(
                            fontSize: screenWidth * 0.008, color: Colors.red),
                      ),
                ElevatedButton(
                    onPressed: agree == true
                        ? () {
                            setState(() {
                              errorMessage = null;
                            });

                            if (emailController.text.isNotEmpty &&
                                nameController.text.isNotEmpty &&
                                descriptionController.text.isNotEmpty &&
                                questionController.text.isNotEmpty) {
                              launchMailto();
                            } else {
                              setState(() {
                                errorMessage = 'Введены не все данные';
                              });
                            }
                          }
                        : null,
                    child: Text(
                      'Отправить',
                      style: TextStyle(fontSize: screenWidth * 0.011),
                    )),
                SizedBox(
                  height: screenWidth * 0.011,
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenWidth * 0.006,
                ),
                Container(
                  width: screenWidth * 0.401,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Часто задаваемые вопросы',
                        style: TextStyle(
                            fontSize: screenWidth * 0.011,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenWidth * 0.006,
                ),
                Container(
                  width: screenWidth * 0.424,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        children: [
                          Icon(
                            CustomIcon.romb,
                            color: Colors.blue,
                            size: screenWidth * 0.008,
                          ),
                          Text(
                            '   Как сделать ставку, если моего букмекера нет в списке?',
                            style: TextStyle(
                              fontSize: screenWidth * 0.011,
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
                                size: screenWidth * 0.005,
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
                                size: screenWidth * 0.005,
                              ),
                            )
                    ],
                  ),
                ),
                isOpen == true
                    ? Padding(
                        padding: EdgeInsets.only(
                          left: screenWidth * 0.02,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Как уже неоднократно упомянуто, многие известные личности',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'формируют глобальную экономическую сеть и при этом -',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'обнародованы. Внезапно, ключевые особенности структуры',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'проекта будут в равной степени предоставлены сами себе! Мы',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'вынуждены отталкиваться от того, что экономическая повестка',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'сегодняшнего дня, а также свежий взгляд на привычные вещи -',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'безусловно открывает новые горизонты для переосмысления',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'нешнеэкономических политик.',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                      )
                    : SizedBox.shrink(),
                SizedBox(
                  height: screenWidth * 0.012,
                ),
                Container(
                  width: screenWidth * 0.424,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            CustomIcon.romb,
                            color: Colors.blue,
                            size: screenWidth * 0.008,
                          ),
                          Text(
                            '   Как сделать ставку, если моего букмекера нет в списке, так как он',
                            style: TextStyle(
                              fontSize: screenWidth * 0.011,
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
                                size: screenWidth * 0.005,
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
                                size: screenWidth * 0.005,
                              ),
                            )
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
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'формируют глобальную экономическую сеть и при этом -',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'обнародованы. Внезапно, ключевые особенности структуры',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'проекта будут в равной степени предоставлены сами себе! Мы',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'вынуждены отталкиваться от того, что экономическая повестка',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'сегодняшнего дня, а также свежий взгляд на привычные вещи -',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'безусловно открывает новые горизонты для переосмысления',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'нешнеэкономических политик.',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                      )
                    : SizedBox.shrink(),
                Row(
                  children: [
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    Text(
                      'является зарубежным букмекером?',
                      style: TextStyle(
                        fontSize: screenWidth * 0.011,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenWidth * 0.012,
                ),
                Container(
                  width: screenWidth * 0.424,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            CustomIcon.romb,
                            color: Colors.blue,
                            size: screenWidth * 0.008,
                          ),
                          Text(
                            '   Не получается сделать ставку на событие в перерыве.',
                            style: TextStyle(
                              fontSize: screenWidth * 0.011,
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
                                size: screenWidth * 0.005,
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
                                size: screenWidth * 0.005,
                              ),
                            )
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
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'формируют глобальную экономическую сеть и при этом -',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'обнародованы. Внезапно, ключевые особенности структуры',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'проекта будут в равной степени предоставлены сами себе! Мы',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'вынуждены отталкиваться от того, что экономическая повестка',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'сегодняшнего дня, а также свежий взгляд на привычные вещи -',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'безусловно открывает новые горизонты для переосмысления',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'нешнеэкономических политик.',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                      )
                    : SizedBox.shrink(),
                SizedBox(
                  height: screenWidth * 0.012,
                ),
                Container(
                  width: screenWidth * 0.424,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            CustomIcon.romb,
                            color: Colors.blue,
                            size: screenWidth * 0.008,
                          ),
                          Text(
                            '   Проблемы с отображением корректной статистики в профиле в',
                            style: TextStyle(
                              fontSize: screenWidth * 0.011,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      isOpenForth == false
                          ? IconButton(
                              onPressed: () {
                                setState(() {
                                  isOpenForth = true;
                                });
                              },
                              icon: Icon(
                                CustomIcon.arrow_down,
                                color: Colors.grey,
                                size: screenWidth * 0.005,
                              ),
                            )
                          : IconButton(
                              onPressed: () {
                                setState(() {
                                  isOpenForth = false;
                                });
                              },
                              icon: Icon(
                                CustomIcon.arrow_up,
                                color: Colors.grey,
                                size: screenWidth * 0.005,
                              ),
                            )
                    ],
                  ),
                ),
                isOpenForth == true
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
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'формируют глобальную экономическую сеть и при этом -',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'обнародованы. Внезапно, ключевые особенности структуры',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'проекта будут в равной степени предоставлены сами себе! Мы',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'вынуждены отталкиваться от того, что экономическая повестка',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'сегодняшнего дня, а также свежий взгляд на привычные вещи -',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'безусловно открывает новые горизонты для переосмысления',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'нешнеэкономических политик.',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                      )
                    : SizedBox.shrink(),
                Row(
                  children: [
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    Text(
                      'приложении.',
                      style: TextStyle(
                        fontSize: screenWidth * 0.011,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenWidth * 0.011,
                ),
                Container(
                  width: screenWidth * 0.424,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            CustomIcon.romb,
                            color: Colors.blue,
                            size: screenWidth * 0.008,
                          ),
                          Text(
                            '   На мой аккаунт наложил ограничения букмекер, что делать, чтобы',
                            style: TextStyle(
                              fontSize: screenWidth * 0.011,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      isOpenFifth == false
                          ? IconButton(
                              onPressed: () {
                                setState(() {
                                  isOpenFifth = true;
                                });
                              },
                              icon: Icon(
                                CustomIcon.arrow_down,
                                color: Colors.grey,
                                size: screenWidth * 0.005,
                              ),
                            )
                          : IconButton(
                              onPressed: () {
                                setState(() {
                                  isOpenFifth = false;
                                });
                              },
                              icon: Icon(
                                CustomIcon.arrow_up,
                                color: Colors.grey,
                                size: screenWidth * 0.005,
                              ),
                            )
                    ],
                  ),
                ),
                isOpenFifth == true
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
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'формируют глобальную экономическую сеть и при этом -',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'обнародованы. Внезапно, ключевые особенности структуры',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'проекта будут в равной степени предоставлены сами себе! Мы',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'вынуждены отталкиваться от того, что экономическая повестка',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'сегодняшнего дня, а также свежий взгляд на привычные вещи -',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'безусловно открывает новые горизонты для переосмысления',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              'нешнеэкономических политик.',
                              style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                      )
                    : SizedBox.shrink(),
                Row(
                  children: [
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    Text(
                      'его восстановить?',
                      style: TextStyle(
                        fontSize: screenWidth * 0.011,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: screenWidth * 0.28,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            'Посмотреть еще',
                            style: TextStyle(
                                fontSize: screenWidth * 0.011,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.arrow_forward_outlined,
                            color: Colors.blue,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  launchMailto() async {
    final mailtoLink = Mailto(
      to: ['betbitrix@yandex.ru'],
      cc: [emailController.text, 'betbitrix@yandex.ru'],
      subject: questionController.text,
      body: '${nameController.text}: ${descriptionController.text}',
    );
    // Convert the Mailto instance into a string.
    // Use either Dart's string interpolation
    // or the toString() method.
    await launch('$mailtoLink');
  }
}
