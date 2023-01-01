import 'package:flutter/material.dart';

import '../constants.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage(
                  'https://xyz.ir/wp-content/uploads/2021/05/avatar.jpg.320x320px.jpg'),
            ),
            Text(
              'Derek',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'ARCHITECT',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.grey.shade900,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.purple.shade100,
              ),
            ),
            Card(
                color: kPrimaryColor,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: kBackgroundColor,
                  ),
                  title: Text(
                    '+91 123 456 789',
                    style: TextStyle(
                      color: kBackgroundColor,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                )),
            Card(
                color: kPrimaryColor,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: kBackgroundColor,
                  ),
                  title: Text(
                    'derek@email.com',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: kBackgroundColor,
                        fontFamily: 'Source Sans Pro'),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
