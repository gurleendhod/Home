import 'package:flutter/material.dart';
import 'package:home/constants.dart';

class DailyTasksScreen extends StatefulWidget {
  const DailyTasksScreen({Key? key}) : super(key: key);

  @override
  _DailyTasksScreenState createState() => _DailyTasksScreenState();
}

class _DailyTasksScreenState extends State<DailyTasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor.withOpacity(0.6),
      appBar: AppBar(
        title: Text('Daily Tasks'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Center(
              child: Text(
                'Current Routine',
                style: kTextStyleWhite(FontWeight.w600, 30.0),
              ),
            ),
            SizedBox(height: 50),
            Text(
              'Daily Tasks',
              style: kTextStyleWhite(FontWeight.w500, 25.0),
            ),
            SizedBox(
              height: 20,
            ),
            row('8:00', 'Donepezil'),
            row('9:15', 'Read'),
            row('9:55', 'Go to sleep')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  Widget row(time, title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          Text(time, style: kTextStyleWhite(FontWeight.w400, 20.0)),
          SizedBox(width: 20),
          Expanded(
            child: Container(
              height: 80,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Icon(
                    Icons.check_circle,
                    color: Colors.green.shade600,
                  ),
                  SizedBox(width: 10),
                  Text(
                    title,
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
