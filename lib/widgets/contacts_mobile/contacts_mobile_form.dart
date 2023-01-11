import 'package:bet_bitrix/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsMobileForm extends StatefulWidget {
  ContactsMobileForm({Key? key}) : super(key: key);

  @override
  State<ContactsMobileForm> createState() => _ContactsMobileFormState();
}

class _ContactsMobileFormState extends State<ContactsMobileForm> {
  bool agree = false;
  String? errorMessage;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController questionController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double paddingHorizontal = MediaQuery.of(context).size.width * 0.055;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: screenWidth * 0.006,
          ),
          Text(
            'Форма обратной связи',
            style: TextStyle(
              fontSize: screenWidth * 0.038,
              color: Colors.blue,
            ),
          ),
          SizedBox(
            height: screenWidth * 0.02,
          ),
          Text(
            'Напиши нам',
            style: TextStyle(
                fontSize: screenWidth * 0.055,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: screenWidth * 0.02,
          ),
          Text(
            'Ваше имя',
            style: TextStyle(
                fontSize: screenWidth * 0.038,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: screenWidth * 0.02,
          ),
          Container(
            width: screenWidth * 0.88,
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
                fontSize: screenWidth * 0.038,
                color: Colors.black87,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: screenWidth * 0.02,
          ),
          Container(
            width: screenWidth * 0.88,
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
                fontSize: screenWidth * 0.038,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: screenWidth * 0.02,
          ),
          Container(
            width: screenWidth * 0.88,
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
                fontSize: screenWidth * 0.038,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: screenWidth * 0.02,
          ),
          Container(
            //height: screenWidth * 0.2,
            width: screenWidth * 0.88,
            child: TextField(
              controller: descriptionController,
              minLines: 5,
              maxLines: 10,
              decoration: const InputDecoration(
                  hintText: 'Опишите свой вопрос',
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
            width: screenWidth * 0.88,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Прикрепить файл',
                      style: TextStyle(
                          fontSize: screenWidth * 0.038, color: Colors.black),
                    ),
                    Text(
                      'jpeg, jpg, png, pdf до 2МБ',
                      style: TextStyle(
                          fontSize: screenWidth * 0.038,
                          color: Colors.black.withOpacity(0.6)),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CustomIcon.attachfile,
                    color: Colors.blue,
                    size: screenWidth * 0.05,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: screenWidth * 0.02,
          ),
          Container(
            width: screenWidth * 0.88,
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
                  width: screenWidth * 0.011,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Я ознакомлен с политикой конфиденциальности и даю согласие на',
                      style: TextStyle(
                          fontSize: screenWidth * 0.022,
                          color: Colors.black,
                          decoration: TextDecoration.underline),
                    ),
                    Text(
                      'обработку моих персональных данных',
                      style: TextStyle(
                          fontSize: screenWidth * 0.022,
                          color: Colors.black,
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenWidth * 0.02,
          ),
          errorMessage == null
              ? SizedBox.shrink()
              : Text(
                  errorMessage!,
                  style: TextStyle(
                      fontSize: screenWidth * 0.038, color: Colors.red),
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
                style: TextStyle(fontSize: screenWidth * 0.038),
              )),
          SizedBox(
            height: screenWidth * 0.02,
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
