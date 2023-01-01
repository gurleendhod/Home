import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  header(),
                  SizedBox(height: 20),
                  Text(
                    ' Hello Derek!',
                    style: kTextStyleBlack(FontWeight.w500, 25.0),
                  ),
                  SizedBox(height: 15),
                  Text(
                    " See your today's progress!",
                    style: kTextStyleBlack(FontWeight.w400, 18.0),
                  ),
                  CourseGrid(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget header() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.location_on_outlined,
              size: 30,
            ),
          ),
          Text(
            "Rohini, New Delhi",
            style: kTextStyleBlack(
              FontWeight.w400,
              18.0,
            ),
          ),
        ],
      ),
      Row(
        children: [
          IconButton(
            onPressed: () {
              // NotificationsApi.imageNotification();
            },
            icon: Icon(
              Icons.notifications,
              size: 30,
            ),
          ),
        ],
      ),
    ],
  );
}

class Task {
  final String text;
  final String tasks;
  final String imageUrl;
  final double percent;
  final String backImage;
  final Color color;

  Task({
    required this.text,
    required this.tasks,
    required this.imageUrl,
    required this.percent,
    required this.backImage,
    required this.color,
  });
}

final List<Task> course = [
  Task(
      text: "Completed",
      tasks: "5 Tasks",
      imageUrl:
          "https://drive.google.com/uc?export=view&id=1k2xIr0nTynNy2yasIJDK0xmkdaWGf0yg",
      percent: 75,
      backImage:
          "https://drive.google.com/uc?export=view&id=1oMNtKZHkHvoq3ZWBrLTOt8tLe1ck1EPz",
      color: Colors.blue),
  Task(
      text: "Pending",
      tasks: "3 Tasks",
      imageUrl:
          "https://drive.google.com/uc?export=view&id=1XgYACjmlgAe0_S62-mVnsEnLm3SAPu01",
      percent: 50,
      backImage:
          "https://drive.google.com/uc?export=view&id=1Gx_zUVMK-961yeBC5-jRrWq1u4dB5dh4",
      color: Colors.orange),
  Task(
      text: "Missed",
      tasks: "2 Tasks",
      imageUrl:
          "https://drive.google.com/uc?export=view&id=1eyGIu67A3enlBU8uSQXhZ0ttYymePab8",
      percent: 25,
      backImage:
          "https://drive.google.com/uc?export=view&id=1Vf81bsKCRZao-TRbkPd0ay75CUlXbM23",
      color: Colors.green),
];

class CourseGrid extends StatelessWidget {
  const CourseGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: course.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 19 / 8, crossAxisCount: 1, mainAxisSpacing: 25),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(course[index].backImage),
                  fit: BoxFit.fill),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        course[index].text,
                        style: const TextStyle(
                            color: Colors.white, fontSize: 18.0),
                      ),
                      Text(
                        course[index].tasks,
                        style: const TextStyle(
                            color: Colors.white, fontSize: 15.0),
                      ),
                      CircularPercentIndicator(
                        radius: 33,
                        lineWidth: 8,
                        animation: true,
                        animationDuration: 1500,
                        circularStrokeCap: CircularStrokeCap.round,
                        percent: course[index].percent / 100,
                        progressColor: Colors.white,
                        center: Text(
                          "${course[index].percent}%",
                          style: const TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.network(
                          course[index].imageUrl,
                          height: 90,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
