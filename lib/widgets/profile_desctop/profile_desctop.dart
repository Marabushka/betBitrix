import 'package:bet_bitrix/utils/colors_repository.dart';
import 'package:bet_bitrix/widgets/footer_desctop.dart';
import 'package:bet_bitrix/widgets/paint_widget.dart';
import 'package:bet_bitrix/widgets/profile_desctop/arc_widget.dart';
import 'package:flutter/material.dart';

class ProfileDesctop extends StatefulWidget {
  ProfileDesctop({Key? key}) : super(key: key);

  @override
  State<ProfileDesctop> createState() => _ProfileDesctopState();
}

class _ProfileDesctopState extends State<ProfileDesctop> {
  final TextEditingController _loginController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double paddingHorizontal = MediaQuery.of(context).size.width * 0.11;
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: paddingHorizontal, vertical: paddingHorizontal / 2),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: screenWidth * 0.3,
                    height: screenWidth * 0.1,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black.withOpacity(0.1),
                        ),
                        borderRadius: BorderRadius.all(
                            Radius.circular(screenWidth * 0.01))),
                    child: Padding(
                      padding: EdgeInsets.all(screenWidth * 0.017),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Личные данные',
                            style: TextStyle(
                                fontSize: screenWidth * 0.012,
                                color: CustomColors.blue),
                          ),
                          SizedBox(
                            height: screenWidth * 0.005,
                          ),
                          Container(
                            height: 1,
                            width: screenWidth * 0.09,
                            color: CustomColors.blue,
                          ),
                          SizedBox(
                            height: screenWidth * 0.02,
                          ),
                          Row(
                            children: [
                              Text(
                                'Адрес электронной почты:  ',
                                style: TextStyle(
                                  fontSize: screenWidth * 0.012,
                                ),
                              ),
                              Text(
                                'pochta@mail.ru',
                                style: TextStyle(
                                    fontSize: screenWidth * 0.012,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenWidth * 0.02,
                  ),
                  Container(
                    width: screenWidth * 0.3,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black.withOpacity(0.1),
                        ),
                        borderRadius: BorderRadius.all(
                            Radius.circular(screenWidth * 0.01))),
                    child: Padding(
                      padding: EdgeInsets.all(screenWidth * 0.017),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Статус подписки',
                                style: TextStyle(
                                    fontSize: screenWidth * 0.012,
                                    color: CustomColors.blue),
                              ),
                              SizedBox(
                                height: screenWidth * 0.02,
                              ),
                              Stack(
                                alignment: AlignmentDirectional.centerStart,
                                children: [
                                  SizedBox(
                                    width: screenWidth * 0.11,
                                    height: screenWidth * 0.11,
                                    child: DrawArcWidget(
                                        child: Text(
                                          '195 дн.',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: screenWidth * 0.011),
                                        ),
                                        arcColor: CustomColors.lightBlue,
                                        arcLeftColor: Colors.green,
                                        lineWidth: screenWidth * 0.0065,
                                        percent: 0.30),
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: screenWidth * 0.05,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Подписка активна',
                                            style: TextStyle(
                                                fontSize: screenWidth * 0.01,
                                                color: Colors.green),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: screenWidth * 0.095,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  width: screenWidth * 0.095,
                                  height: screenWidth * 0.022,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Продлить",
                                        style: TextStyle(
                                          fontSize: screenWidth * 0.009,
                                        ),
                                      )),
                                ),
                                SizedBox(
                                  height: screenWidth * 0.01,
                                ),
                                SizedBox(
                                  width: screenWidth * 0.095,
                                  height: screenWidth * 0.022,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Заморозить",
                                        style: TextStyle(
                                          fontSize: screenWidth * 0.009,
                                        ),
                                      )),
                                ),
                                SizedBox(
                                  height: screenWidth * 0.01,
                                ),
                                Text(
                                  'Заморозок: 1 шт',
                                  style: TextStyle(
                                      fontSize: screenWidth * 0.01,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: screenWidth * 0.02,
              ),
              Container(
                width: screenWidth * 0.35,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black.withOpacity(0.1),
                    ),
                    borderRadius:
                        BorderRadius.all(Radius.circular(screenWidth * 0.01))),
                child: Padding(
                  padding: EdgeInsets.all(screenWidth * 0.017),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Сменить пароль',
                        style: TextStyle(
                            fontSize: screenWidth * 0.012,
                            color: CustomColors.blue),
                      ),
                      SizedBox(
                        height: screenWidth * 0.005,
                      ),
                      Container(
                        height: 1,
                        width: screenWidth * 0.09,
                        color: CustomColors.blue,
                      ),
                      SizedBox(
                        height: screenWidth * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Старый пароль:  ',
                            style: TextStyle(
                              fontSize: screenWidth * 0.012,
                            ),
                          ),
                          SizedBox(
                            height: screenWidth * 0.02,
                            width: screenWidth * 0.15,
                            child: TextField(
                              obscureText: true,
                              controller: _loginController,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(screenWidth * 0.007),
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenWidth * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Новый пароль:  ',
                            style: TextStyle(
                              fontSize: screenWidth * 0.012,
                            ),
                          ),
                          SizedBox(
                            height: screenWidth * 0.02,
                            width: screenWidth * 0.15,
                            child: TextField(
                              obscureText: true,
                              controller: _loginController,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(screenWidth * 0.007),
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenWidth * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Подтвердить пароль:  ',
                            style: TextStyle(
                              fontSize: screenWidth * 0.012,
                            ),
                          ),
                          SizedBox(
                            height: screenWidth * 0.02,
                            width: screenWidth * 0.15,
                            child: TextField(
                              obscureText: true,
                              controller: _loginController,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(screenWidth * 0.007),
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenWidth * 0.01,
                      ),
                      Container(
                        width: screenWidth * 0.092,
                        height: screenWidth * 0.022,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Применить',
                            style: TextStyle(fontSize: screenWidth * 0.01),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        FooterDesctop()
      ],
    )));
  }
}
