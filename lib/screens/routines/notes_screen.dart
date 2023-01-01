import 'package:flutter/material.dart';
import 'package:home/constants.dart';
import 'package:home/screens/routines/audio_home.dart';
import 'package:home/screens/routines/text_home.dart';
import 'package:home/screens/routines/video_home.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Your Notes,',
              style: kTextStyleBlack(FontWeight.w500, 25.0),
            ),
            SizedBox(
              height: 50,
            ),
            Wrap(
              children: [
                card('Text ', Colors.greenAccent.shade200, () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TextNotesPage()));
                }),
                SizedBox(
                  width: 20,
                ),
                card('Video', Colors.blueGrey.withOpacity(0.5), () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VideoNotesPage()));
                }),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: card('Audio', Colors.blue.withOpacity(0.7), () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AudioNotesPage()));
                  }),
                ),
              ],
            )
          ],
        ),
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
              22.0,
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
