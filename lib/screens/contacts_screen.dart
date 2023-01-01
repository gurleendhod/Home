import 'package:flutter/material.dart';
import 'package:home/constants.dart';
import 'package:home/contacts/model/contactData.dart';
import 'package:home/contacts/contact_list.dart';
import 'package:home/contacts/add_contact.dart';
import 'package:provider/provider.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  ContactData contactData = ContactData();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ContactData(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Contacts'),
          centerTitle: true,
        ),
        backgroundColor: kBackgroundColor,
        floatingActionButton: FloatingActionButton(
            backgroundColor: kPrimaryColor,
            elevation: 3.0,
            child: Icon(
              Icons.add,
              color: kBackgroundColor,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AddContact()));
            }),
        body: (contactData.contactList.isEmpty)
            ? Center(
                child: Text(
                  'No contacts yet!',
                  style: kTextStyleBlack(FontWeight.w400, 25.0),
                ),
              )
            : const ContactList(),
      ),
    );
  }
}
