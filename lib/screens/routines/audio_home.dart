import 'package:flutter/material.dart';
import 'package:home/constants.dart';

class AudioNotesPage extends StatefulWidget {
  const AudioNotesPage({Key? key}) : super(key: key);

  @override
  _AudioNotesPageState createState() => _AudioNotesPageState();
}

class _AudioNotesPageState extends State<AudioNotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audio Notes'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(
              'Your Recordings,',
              style: kTextStyleBlack(FontWeight.w400, 25.0),
            ),
            SizedBox(height: 20),
            audioTile("Message to me", "1:50", context),
            audioTile("Family Details", "1:28", context),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }

  Widget audioTile(title, time, context) {
    return ListTile(
        leading: Icon(
          Icons.play_circle_outline_rounded,
          size: 34.0,
        ),
        title: Text(
          '$title',
          style: TextStyle(fontSize: 18.0),
        ),
        subtitle: LinearProgressIndicator(
          value: 0,
          backgroundColor: kPrimaryColor.withOpacity(0.36),
        ),
        trailing: Text('$time', style: TextStyle(fontSize: 16.0)));
  }
}
