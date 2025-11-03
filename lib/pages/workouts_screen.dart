import 'package:flutter/material.dart';
import 'package:hymns/services/section_head_line_text.dart';
import 'package:hymns/services/small_card_widget.dart';

class WorkoutsScreen extends StatefulWidget {
  final topWorkoutList = [
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

  WorkoutsScreen({super.key});

  @override
  State<WorkoutsScreen> createState() => _WorkoutsScreenState();
}

class _WorkoutsScreenState extends State<WorkoutsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          margin: EdgeInsets.all(12.0),
          child: Column(
            children: [
              SectionHeadLineText(headlineText: "Workouts"),
              SizedBox(height: 5.0),
              SizedBox(
                height: 650.0,
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
