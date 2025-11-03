import 'package:flutter/material.dart';
import 'package:hymns/services/section_head_line_text.dart';
import 'package:hymns/services/small_card_widget.dart';
import 'package:hymns/services/stats_widget_card.dart';
import 'package:hymns/services/support_widget.dart';

class HomeScreen extends StatefulWidget {
  final workoutList = [
    {
      "headlineText": "Full Body",
      "workouts": "20 Workouts",
      "minutes": "140 minutes",
      "bgColor": Color(0xfffcb74f),
      "imagePath": 'man.png',
    },
    {
      "headlineText": "Bike Training",
      "workouts": "9 Workouts",
      "minutes": "60 minutes",
      "bgColor": Color(0xfff59884),
      "imagePath": 'bike.png',
    },
    {
      "headlineText": "Meditation",
      "workouts": "8 Workouts",
      "minutes": "45 minutes",
      "bgColor": Color(0xff9ad3bc),
      "imagePath": 'meditate.png',
    },
    {
      "headlineText": "Treadmill",
      "workouts": "89 Workouts",
      "minutes": "23 minutes",
      "bgColor": Color(0xff9bb7d4),
      "imagePath": 'treadmill.png',
    },
  ];
  final topWorkoutList = [
    {
      "headlineText": "Pilates",
      "workouts": "2 sets | 5 reps",
      "minutes": "10:00",
      "bgColor": Color(0xff9bb7d4),
      "imagePath": 'fitness.png',
    },
    {
      "headlineText": "Upper Body",
      "workouts": "9 sets | 5 reps",
      "minutes": "60:00",
      "textColor": const Color.fromARGB(255, 21, 172, 61),
      "bgColor": Color(0xfff59884),
      "imagePath": 'profile.png',
    },
  ];

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          margin: EdgeInsets.all(12.0),
          child: Column(
            children: [
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
                child: SmallCardWidget(workoutList: widget.workoutList),
              ),
              SizedBox(height: 10.0),
              SectionHeadLineText(headlineText: "Top Workouts"),
              SizedBox(height: 5.0),
              SizedBox(
                height: 200.0,
                child: SmallCardWidget(
                  workoutList: widget.topWorkoutList,
                  scrollDirection: Axis.vertical,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
