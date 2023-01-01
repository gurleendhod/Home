import 'package:flutter/material.dart';

class VideoNotesPage extends StatefulWidget {
  const VideoNotesPage({Key? key}) : super(key: key);

  @override
  _VideoNotesPageState createState() => _VideoNotesPageState();
}

class _VideoNotesPageState extends State<VideoNotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Videos'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          card(
              'https://cdn.firstcry.com/education/2022/02/21114128/750997891.jpg',
              'Birthday Party',
              '2022-12-17'),
          card(
              'https://www.traveloffpath.com/wp-content/uploads/2022/03/road-trip.jpg',
              'Road Trip',
              '2022-12-12')
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }

  Widget card(image, name, who) {
    return InkWell(
      child: Container(
        width: 150,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: const Offset(
                1.0,
                1.0,
              ),
              blurRadius: 15.0,
              spreadRadius: 2.0,
            ), //BoxShadow
            BoxShadow(
              color: Colors.white,
              offset: const Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ), //BoxShadow
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(0.5), BlendMode.dstATop),
                      image: NetworkImage(
                        image,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Center(
                    child: Icon(
                      Icons.play_circle_outline,
                      size: 40,
                    ),
                  ),
                )
              ],
            ),
            ListTile(
              title: Center(child: Text(name)),
              subtitle: Center(child: Text(who)),
            ),
          ],
        ),
      ),
    );
  }
}
