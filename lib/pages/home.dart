import 'package:flutter/material.dart';
import 'package:hymns/services/section_head_line_text.dart';
import 'package:hymns/services/small_card_widget.dart';
import 'package:hymns/services/stats_widget_card.dart';
import 'package:hymns/services/support_widget.dart';

class Home extends StatefulWidget {
  var workoutList = [
    {
      "headlineText": "Full Body",
      "workouts": 20,
      "minutes": 140,
      "bgColor": Color(0xfffcb74f),
      "imagePath": 'man.png',
    },
    {
      "headlineText": "Bike Training",
      "workouts": 9,
      "minutes": 60,
      "bgColor": Color(0xfff59884),
      "imagePath": 'bike.png',
    },
    {
      "headlineText": "Meditation",
      "workouts": 8,
      "minutes": 45,
      "bgColor": Color(0xff9ad3bc),
      "imagePath": 'meditate.png',
    },
    {
      "headlineText": "Treadmill",
      "workouts": 0000783,
      "minutes": 23,
      "bgColor": Color(0xff9bb7d4),
      "imagePath": 'treadmill.png',
    },
  ];

  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final CarouselController _controller = CarouselController(initialItem: 2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text('Home Page'),
      // ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 35.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("Hi, Lewis", style: AppWidget.headlineStyle(24.0)),
                    Text(
                      "Let's check your activity",
                      style: AppWidget.headlineStyle(18.0),
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(60.0),
                  child: Image(
                    image: AssetImage('assets/images/profile.png'),
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Row(
              children: [
                Row(
                  spacing: 20.0,
                  children: [
                    Column(
                      children: [
                        Material(
                          elevation: 2.0,
                          borderRadius: BorderRadius.circular(20.0),

                          child: Container(
                            padding: EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                            margin: EdgeInsets.all(5.0),
                            child: Column(
                              children: [
                                Text(
                                  "Finished",
                                  style: AppWidget.headlineStyle(20.0),
                                ),
                                SizedBox(height: 10.0),
                                Text(
                                  "12",
                                  style: AppWidget.mediumTextStyle(35.0),
                                ),
                                SizedBox(height: 10.0),
                                Text(
                                  "Completed\n Workouts",
                                  style: AppWidget.mediumTextStyle(16.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            StatsWidgetCard(
                              headlineText: "In Progress",
                              valueText: "2",
                              suffixText: " Workouts",
                            ),
                            SizedBox(height: 5.0),
                            StatsWidgetCard(
                              headlineText: "Time Spent",
                              valueText: "20.0",
                              suffixText: " minutes",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15.0),
            SectionHeadLineText(headlineText: "Discover New Workouts"),
            SizedBox(height: 5.0),
            SizedBox(
              height: 140.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                children: [
                  for (final workout in widget.workoutList) ...[
                    SizedBox(width: 5.0),
                    SmallCardWidget(
                      headlineText: workout['headlineText'] as String,
                      workouts: workout['workouts'] as int,
                      minutes: workout['minutes'] as int,
                      bgColor: workout['bgColor'] as Color,
                      imagePath: workout['imagePath'] as String,
                    ),
                    SizedBox(width: 5.0),
                  ],
                ],
              ),
            ),
            SizedBox(height: 10.0),
            SectionHeadLineText(headlineText: "Top Workouts"),
            SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }
}
