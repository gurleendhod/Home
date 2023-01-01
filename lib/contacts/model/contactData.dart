import 'package:flutter/material.dart';
import 'contact.dart';
import 'dart:collection';
import 'dart:io';

class ContactData extends ChangeNotifier {
  final List<Contact> _contactList = [
    Contact(name: 'Gauri', relation: 'Wife', phoneNumber: '9356749372'),
    Contact(name: 'Rohit', relation: 'Son', phoneNumber: '9324578899'),
    Contact(name: 'Sameer', relation: 'Friend', phoneNumber: '9648392729'),
  ];

  int get contactCount {
    return _contactList.length;
  }

  UnmodifiableListView<Contact> get contactList {
    return UnmodifiableListView(_contactList);
  }

  void addContact(
    String name,
    String phoneNumber,
    String relation,
    File image,
  ) {
    _contactList.add(Contact(
        name: name,
        phoneNumber: phoneNumber,
        relation: relation,
        image: image));
    notifyListeners();
  }

  void deleteContact(Contact contact) {
    _contactList.remove(contact);
    notifyListeners();
  }
}
