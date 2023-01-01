import 'package:flutter/material.dart';
import 'package:home/components/notes.dart';
import 'package:home/constants.dart';
import 'package:intl/intl.dart';

class TextNotesPage extends StatefulWidget {
  @override
  _TextNotesPageState createState() => _TextNotesPageState();
}

class _TextNotesPageState extends State<TextNotesPage> {
  late List<Note> notes = [
    Note(
        id: 0,
        isImportant: true,
        number: 1,
        title: 'Workout',
        description: 'Do skipping and jogging',
        createdTime: DateTime.utc(1989, 11, 9)),
  ];
  int index = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(
            'Notes',
            style: TextStyle(fontSize: 24),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(12),
                child: ListView(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  children: [
                    Text(
                      notes[index].title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      DateFormat.yMMMd().format(notes[index].createdTime),
                      style: TextStyle(color: Colors.white38),
                    ),
                    SizedBox(height: 8),
                    Text(
                      notes[index].description,
                      style: TextStyle(color: Colors.white70, fontSize: 18),
                    )
                  ],
                ),
              ),
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
