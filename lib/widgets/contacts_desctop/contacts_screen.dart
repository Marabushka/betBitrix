import 'package:bet_bitrix/widgets/contacts_desctop/contacts_form.dart';
import 'package:bet_bitrix/widgets/contacts_desctop/contacts_header.dart';
import 'package:bet_bitrix/widgets/footer_desctop.dart';
import 'package:flutter/material.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double paddingHorizontal = MediaQuery.of(context).size.width * 0.11;
    return SingleChildScrollView(
        child: Column(
      children: [
        ContactsHeader(paddingHorizontal, screenWidth),
        ContactsFormWidget(),
        FooterDesctop(),
      ],
    ));
  }
}
