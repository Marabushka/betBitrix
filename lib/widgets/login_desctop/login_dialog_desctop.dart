import 'package:flutter/material.dart';

class LoginDialogDesctop extends StatefulWidget {
  LoginDialogDesctop({Key? key}) : super(key: key);

  @override
  State<LoginDialogDesctop> createState() => _LoginDialogDesctopState();
}

class _LoginDialogDesctopState extends State<LoginDialogDesctop> {
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
                  fontSize: screenWidth * 0.021),
            ),
            content: Container(
              width: screenWidth * 0.28,
              height: (screenHeight > 820 || screenWidth > 800)
                  ? screenHeight * 0.45
                  : screenHeight * 0.7,
              child: enterFieldWidget(screenWidth),
            ),
          )
        : AlertDialog(
            scrollable: true,
            title: Text(
              'Регистрация',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: screenWidth * 0.021),
            ),
            content: Container(
              width: screenWidth * 0.28,
              height: (screenHeight > 820 || screenWidth > 800)
                  ? screenHeight * 0.5
                  : screenHeight * 0.8,
              child: registerFieldWidget(screenWidth),
            ),
          );
  }

  SingleChildScrollView registerFieldWidget(double screenWidth) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Уже есть аккаунт?',
                style: TextStyle(fontSize: screenWidth * 0.016),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    isLoginOrRegister = true;
                  });
                },
                child: Text(
                  'Вход',
                  style: TextStyle(fontSize: screenWidth * 0.016),
                ),
              )
            ],
          ),
          SizedBox(
            height: screenWidth * 0.014,
          ),
          SizedBox(
            height: screenWidth * 0.05,
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
            height: screenWidth * 0.05,
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
            height: screenWidth * 0.05,
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
            width: screenWidth * 0.32,
            height: screenWidth * 0.03,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Войти',
                style: TextStyle(fontSize: screenWidth * 0.015),
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
                        style: TextStyle(fontSize: screenWidth * 0.008),
                      ),
                      Text(
                        'и принимаю пользовательское соглашение',
                        style: TextStyle(
                            fontSize: screenWidth * 0.008,
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

  SingleChildScrollView enterFieldWidget(double screenWidth) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Нет аккаунта?',
                style: TextStyle(fontSize: screenWidth * 0.016),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    isLoginOrRegister = false;
                  });
                },
                child: Text(
                  'Регистрация',
                  style: TextStyle(fontSize: screenWidth * 0.016),
                ),
              )
            ],
          ),
          SizedBox(
            height: screenWidth * 0.014,
          ),
          SizedBox(
            height: screenWidth * 0.05,
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
            height: screenWidth * 0.05,
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
            width: screenWidth * 0.32,
            height: screenWidth * 0.03,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Войти',
                style: TextStyle(fontSize: screenWidth * 0.015),
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
                    style: TextStyle(fontSize: screenWidth * 0.012),
                  )
                ],
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Забыли пароль?',
                  style: TextStyle(fontSize: screenWidth * 0.012),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
