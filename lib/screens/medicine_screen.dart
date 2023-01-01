import 'package:flutter/material.dart';
import 'package:home/constants.dart';

class MedicineScreen extends StatelessWidget {
  const MedicineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              'Derek, here are your pills,',
              style: kTextStyleBlack(FontWeight.w500, 25.0),
            ),
            SizedBox(
              height: 30,
            ),
            div1(context),
            SizedBox(
              height: 20,
            ),
            div2(context),
          ],
        ),
      ),
    );
  }

  Widget div1(context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.yellow.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '08:00',
            style: kTextStyleBlack(FontWeight.w300, 20.0),
          ),
          Divider(
            thickness: 2.0,
          ),
          ListTile(
            leading: Icon(
              Icons.medical_services_rounded,
              color: kPrimaryColor,
            ),
            title: Text('Aspirin'),
            subtitle: Text('Take 1 tablet'),
          ),
          ListTile(
            leading: Icon(
              Icons.water_drop,
              color: kPrimaryColor,
            ),
            title: Text('Water'),
            subtitle: Text('2 Glasses'),
          ),
        ],
      ),
    );
  }

  Widget div2(context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.lightGreen.shade100,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '09:55',
            style: kTextStyleBlack(FontWeight.w300, 20.0),
          ),
          Divider(
            thickness: 2.0,
          ),
          ListTile(
            leading: Icon(
              Icons.medication_liquid_rounded,
              color: kPrimaryColor,
            ),
            title: Text('Omega3'),
            subtitle: Text('Take syrup'),
          ),
          ListTile(
            leading: Icon(
              Icons.water_drop,
              color: kPrimaryColor,
            ),
            title: Text('Water'),
            subtitle: Text('2 Glasses'),
          ),
        ],
      ),
    );
  }
}
