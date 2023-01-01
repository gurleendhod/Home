import 'package:flutter/material.dart';
import 'package:home/constants.dart';
import 'package:home/contacts/add_contact.dart';
import 'package:home/contacts/details_contact.dart';
import 'package:home/screens/home_page.dart';
import 'package:home/screens/home_screen.dart';
import 'package:home/screens/routine_screen.dart';
import 'package:home/screens/location_screen.dart';
import 'package:home/screens/contacts_screen.dart';
import 'package:home/screens/user_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HOME',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(primary: kPrimaryColor, secondary: kPrimaryColor),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/home_screeen': (context) => const HomeScreen(),
        '/routine_screen': (context) => const RoutineScreen(),
        '/location_screen': (context) => const LocationScreen(),
        '/contacts_screen': (context) => const ContactsScreen(),
        '/settings_screen': (context) => const UserScreen(),
      },
    );
  }
}
