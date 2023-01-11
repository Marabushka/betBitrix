import 'package:flutter/material.dart';

class LoginDialogMobile extends StatefulWidget {
  LoginDialogMobile({Key? key}) : super(key: key);

  @override
  State<LoginDialogMobile> createState() => _LoginDialogMobileState();
}

class _LoginDialogMobileState extends State<LoginDialogMobile> {
  bool agree = false;
  bool isLoginOrRegister = true;
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return isLoginOrRegister
        ? AlertDialog(
            scrollable: true,
            title: Text(
              'Вход в аккаунт',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: screenWidth * 0.045),
            ),
            content: Container(
              width: screenWidth * 0.9,
              height: screenHeight * 0.33,
              child: enterFieldMobileWidget(screenWidth),
            ),
          )
        : AlertDialog(
            scrollable: true,
            title: Text(
              'Регистрация',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: screenWidth * 0.045),
            ),
            content: Container(
              width: screenWidth * 0.9,
              height: screenHeight * 0.5,
              child: registerFieldWidgetMobile(screenWidth),
            ),
          );
  }

  SingleChildScrollView registerFieldWidgetMobile(double screenWidth) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Уже есть аккаунт?',
                style: TextStyle(fontSize: screenWidth * 0.048),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    isLoginOrRegister = true;
                  });
                },
                child: Text(
                  'Вход',
                  style: TextStyle(fontSize: screenWidth * 0.048),
                ),
              )
            ],
          ),
          SizedBox(
            height: screenWidth * 0.014,
          ),
          SizedBox(
            height: screenWidth * 0.15,
            child: TextField(
              controller: _loginController,
              decoration: InputDecoration(
                  hintText: 'Электронная почта',
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
          SizedBox(
            height: screenWidth * 0.15,
            child: TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                  hintText: 'Пароль',
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
          SizedBox(
            height: screenWidth * 0.15,
            child: TextField(
              controller: _loginController,
              decoration: InputDecoration(
                  hintText: 'Повторите пароль',
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
          Container(
            width: screenWidth * 0.9,
            height: screenWidth * 0.09,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Зарегистрироваться',
                style: TextStyle(fontSize: screenWidth * 0.045),
              ),
            ),
          ),
          SizedBox(
            height: screenWidth * 0.014,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: agree,
                    onChanged: (value) {
                      setState(() {
                        agree = value ?? false;
                      });
                    },
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Я даю согласие на обработку персональных данных',
                        style: TextStyle(
                            fontSize: screenWidth * 0.024,
                            decoration: TextDecoration.underline),
                      ),
                      Text(
                        'и принимаю пользовательское соглашение',
                        style: TextStyle(
                            fontSize: screenWidth * 0.024,
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  SingleChildScrollView enterFieldMobileWidget(double screenWidth) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Нет аккаунта?',
                style: TextStyle(fontSize: screenWidth * 0.048),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    isLoginOrRegister = false;
                  });
                },
                child: Text(
                  'Регистрация',
                  style: TextStyle(fontSize: screenWidth * 0.048),
                ),
              )
            ],
          ),
          SizedBox(
            height: screenWidth * 0.014,
          ),
          SizedBox(
            //height: screenWidth * 0.15,
            child: TextField(
              controller: _loginController,
              decoration: InputDecoration(
                  hintText: 'Логин',
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
          SizedBox(
            height: screenWidth * 0.014,
          ),
          SizedBox(
            //height: screenWidth * 0.05,
            child: TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                  hintText: 'Пароль',
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
          SizedBox(
            height: screenWidth * 0.014,
          ),
          Container(
            width: screenWidth * 0.9,
            height: screenWidth * 0.09,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Войти',
                style: TextStyle(fontSize: screenWidth * 0.045),
              ),
            ),
          ),
          SizedBox(
            height: screenWidth * 0.014,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: agree,
                    onChanged: (value) {
                      setState(() {
                        agree = value ?? false;
                      });
                    },
                  ),
                  Text(
                    'Запомнить меня',
                    style: TextStyle(fontSize: screenWidth * 0.036),
                  )
                ],
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Забыли пароль?',
                  style: TextStyle(fontSize: screenWidth * 0.036),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
