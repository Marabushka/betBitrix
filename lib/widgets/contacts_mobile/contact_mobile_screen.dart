import 'package:bet_bitrix/utils/icons.dart';
import 'package:bet_bitrix/widgets/contacts_mobile/contacts_footer_mobile.dart';
import 'package:bet_bitrix/widgets/contacts_mobile/contacts_mobile_form.dart';
import 'package:bet_bitrix/widgets/contacts_mobile/contacts_questions_mobile.dart';
import 'package:bet_bitrix/widgets/footer_mobile.dart';

import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMobileWidget extends StatefulWidget {
  const ContactMobileWidget({Key? key}) : super(key: key);

  @override
  State<ContactMobileWidget> createState() => _ContactMobileWidgetState();
}

class _ContactMobileWidgetState extends State<ContactMobileWidget> {
  bool isOpen = false;
  bool isOpenSecond = false;
  bool isOpenThird = false;
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
    return SingleChildScrollView(
      child: Column(
        children: [
          ContactsFooterMobile(screenWidth, paddingHorizontal),
          ContactsQuestionsMobile(),
          ContactsMobileForm(),
          const FooterMobile()
        ],
      ),
    );
  }
}
