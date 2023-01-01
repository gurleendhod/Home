import 'package:flutter/material.dart';
import 'package:home/contacts/model/contactData.dart';
import 'package:home/contacts/details_contact.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'dart:io';
import 'package:provider/provider.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ContactData>(builder: (context, contactData, child) {
      return ListView.builder(
        itemCount: contactData.contactCount,
        itemBuilder: (context, index) {
          final contact = contactData.contactList[index];
          return ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsContact(
                            name: contact.name,
                            relation: contact.relation,
                            contactNumber: contact.phoneNumber,
                          )));
            },
            onLongPress: () {
              contactData.deleteContact(contact);
            },
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/271deea8-e28c-41a3-aaf5-2913f5f48be6/de7834s-6515bd40-8b2c-4dc6-a843-5ac1a95a8b55.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzI3MWRlZWE4LWUyOGMtNDFhMy1hYWY1LTI5MTNmNWY0OGJlNlwvZGU3ODM0cy02NTE1YmQ0MC04YjJjLTRkYzYtYTg0My01YWMxYTk1YThiNTUuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.BopkDn1ptIwbmcKHdAOlYHyAOOACXW0Zfgbs0-6BY-E'),
            ),
            title: Text(contact.name),
            subtitle: Text(
              "+91 ${contact.phoneNumber} ",
            ),
            trailing: IconButton(
              icon: const Icon(Icons.phone),
              color: Colors.green,
              onPressed: () async {
                FlutterPhoneDirectCaller.callNumber(contact.phoneNumber);
              },
            ),
          );
        },
      );
    });
  }
}
