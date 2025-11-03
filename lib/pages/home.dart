import 'package:flutter/material.dart';
import 'package:hymns/pages/workout_screen.dart';

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
  final List<Widget> _pages = [
    HomeScreen(),
    const WorkoutScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 123, 32, 32),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha((0.3 * 255).round()),

              blurRadius: 10,
              offset: const Offset(0, -2),
            ),
          ],
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            elevation: 0,
            backgroundColor: const Color(0xfff3e5f5),
            selectedItemColor: Colors.deepPurple,
            unselectedItemColor: Colors.grey.shade600,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded),
                activeIcon: Icon(Icons.home_filled),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded),
                activeIcon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_rounded),
                activeIcon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
