import 'package:flutter/material.dart';
import 'package:home/constants.dart';

class DetailsContact extends StatelessWidget {
  final String name;
  final String relation;
  final String contactNumber;

  const DetailsContact(
      {super.key,
      required this.name,
      required this.relation,
      required this.contactNumber});

  @override
  Widget build(BuildContext context) {
    dynamic res = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/271deea8-e28c-41a3-aaf5-2913f5f48be6/de7834s-6515bd40-8b2c-4dc6-a843-5ac1a95a8b55.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzI3MWRlZWE4LWUyOGMtNDFhMy1hYWY1LTI5MTNmNWY0OGJlNlwvZGU3ODM0cy02NTE1YmQ0MC04YjJjLTRkYzYtYTg0My01YWMxYTk1YThiNTUuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.BopkDn1ptIwbmcKHdAOlYHyAOOACXW0Zfgbs0-6BY-E'),
              backgroundColor: Colors.grey,
              radius: 55,
              // backgroundImage: (res.image != null) ? FileImage(res.image!) : null,
              // child: Text(
              //   (res.image != null) ? "" : "ADD",
              //   style: const TextStyle(
              //     color: Colors.black,
              //     fontWeight: FontWeight.w600,
              //   ),
              // ),
            ),
            const SizedBox(
              height: 25,
            ),
            Column(),
            Text(
              "Name: $name",
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Relation: $relation",
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Phone Number: $contactNumber",
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
