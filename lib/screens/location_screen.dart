import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:url_launcher/url_launcher.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String mapQuery(String coordinates) {
    final String myLoc =
        "https://www.google.com/maps/search/?api=1&query=$coordinates";
    return myLoc;
  }

  void _launchURL(url) async {
    await launch(url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfefdff),
      appBar: AppBar(
        title: Text(
          'Location',
          style: kTextStyleWhite(FontWeight.w400, 20.0),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: ListView(
          children: <Widget>[
            ListTile(
              onTap: () {
                _launchURL(mapQuery('28.7383,77.0822'));
              },
              contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
              leading: Icon(
                Icons.home,
                color: kPrimaryColor,
              ),
              title: Text(
                'Home',
                style: kTextStyleBlack(FontWeight.w400, 20.0),
              ),
              subtitle: Text(
                'Rohini, New Delhi, India',
                style: kTextStyleBlack(FontWeight.w300, 16.0),
              ),
              trailing: PopupMenuButton(
                itemBuilder: (_) => const <PopupMenuItem<String>>[
                  PopupMenuItem<String>(
                      value: 'remove', child: Text('Remove label')),
                ],
              ),
            ),
            ListTile(
              onTap: () {
                _launchURL(mapQuery('28.6417,77.1225'));
              },
              contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
              leading: Icon(
                Icons.local_hospital_rounded,
                color: kPrimaryColor,
              ),
              title: Text(
                'Dr. Nitin',
                style: kTextStyleBlack(FontWeight.w400, 20.0),
              ),
              subtitle: Text(
                'Rajouri Garden, New Delhi',
                style: kTextStyleBlack(FontWeight.w300, 16.0),
              ),
              trailing: PopupMenuButton(
                itemBuilder: (_) => const <PopupMenuItem<String>>[
                  PopupMenuItem<String>(
                      value: 'remove', child: Text('Remove label')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
