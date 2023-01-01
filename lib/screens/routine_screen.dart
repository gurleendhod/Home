import 'package:flutter/material.dart';
import 'package:home/screens/medicine_screen.dart';
import 'package:home/screens/routines/notes_screen.dart';
import 'package:home/screens/routines/quiz_screen.dart';
import 'package:home/screens/routines/text_home.dart';
import '../constants.dart';
import 'daily_tasks_screen.dart';

class RoutineScreen extends StatefulWidget {
  const RoutineScreen({Key? key}) : super(key: key);

  @override
  _RoutineScreenState createState() => _RoutineScreenState();
}

class _RoutineScreenState extends State<RoutineScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 35),
          Text(
            ' Derek,',
            style: kTextStyleBlack(FontWeight.w500, 25.0),
          ),
          SizedBox(height: 5),
          Text(
            " Here's Your Routine",
            style: kTextStyleBlack(FontWeight.w400, 20.0),
          ),
          SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              card('Notes', Colors.orange.shade200, () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NotesScreen()));
              }),
              card('Daily Tasks', Colors.blue.shade200, () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DailyTasksScreen()));
              }),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              card('Medicines', Colors.green.shade200, () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MedicineScreen()));
              }),
              card('Daily Quiz', Colors.pink.shade200, () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QuizScreen()));
              }),
            ],
          ),
        ],
      ),
    );
  }

  Widget card(title, color, onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 150,
        width: 150,
        margin: EdgeInsets.all(5),
        child: Center(
          child: Text(
            title,
            style: kTextStyleWhite(
              FontWeight.normal,
              24.0,
            ),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
      ),
    );
  }
}
