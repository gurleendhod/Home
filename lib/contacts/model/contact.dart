import 'dart:io';

class Contact {
  String name;
  String relation;
  String phoneNumber;
  File? image;

  Contact(
      {required this.name,
      required this.relation,
      required this.phoneNumber,
      this.image});
}
