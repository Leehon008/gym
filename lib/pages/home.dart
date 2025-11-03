import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hymns/pages/profile_screen.dart';
import 'package:hymns/pages/workout_screen.dart';
import 'package:hymns/pages/workouts_screen.dart';

class Home extends StatefulWidget {
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

  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // final CarouselController __controller = CarouselController(initialItem: 2);
  int _selectedIndex = 0;

  // Example pages
  final List<Widget> _pages = [HomeScreen(), WorkoutsScreen(), ProfileScreen()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        items: <Widget>[
          Icon(
            Icons.h_mobiledata,
            size: 30,
            shadows: [
              Shadow(
                color: Colors.black26,
                blurRadius: 5,
                offset: Offset(0, 12),
              ),
            ],
          ),
          Icon(Icons.sports_gymnastics, size: 30),
          Icon(Icons.person_rounded, size: 30),
        ],
        onTap: _onItemTapped,
        index: _selectedIndex,
      ),
    );
  }
}
