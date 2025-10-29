import 'package:flutter/material.dart';
import 'package:hymns/services/support_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

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
                            Material(
                              elevation: 2.0,
                              borderRadius: BorderRadius.circular(20.0),
                              child: Container(
                                padding: EdgeInsets.all(20.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: const Color.fromARGB(
                                    255,
                                    255,
                                    255,
                                    255,
                                  ),
                                ),
                                margin: EdgeInsets.all(5.0),
                                child: Column(
                                  children: [
                                    Text(
                                      "In Progress",
                                      style: AppWidget.headlineStyle(20.0),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "0",
                                          style: AppWidget.headlineStyle(20.0),
                                        ),
                                        Text(
                                          " Workouts",
                                          style: AppWidget.mediumTextStyle(
                                            15.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Material(
                              elevation: 2.0,
                              borderRadius: BorderRadius.circular(20.0),
                              child: Container(
                                padding: EdgeInsets.all(20.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: const Color.fromARGB(
                                    255,
                                    255,
                                    255,
                                    255,
                                  ),
                                ),
                                margin: EdgeInsets.all(5.0),
                                child: Column(
                                  children: [
                                    Text(
                                      "Time Spent",
                                      style: AppWidget.headlineStyle(20.0),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "0.0",
                                          style: AppWidget.headlineStyle(20.0),
                                        ),
                                        Text(
                                          " Minutes",
                                          style: AppWidget.mediumTextStyle(
                                            15.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
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
            Row(
              children: [
                Text(
                  "Discover New Workouts",
                  style: AppWidget.headlineStyle(20.0),
                ),
              ],
            ),
            SizedBox(height: 5.0),
            SizedBox(
              height: 180.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                children: [
                  SizedBox(width: 5.0),
                  CardWidget(imagePath: 'images/man.png'),
                  SizedBox(width: 5.0),
                  CardWidget(imagePath: 'images/meditate.png'),
                  SizedBox(width: 5.0),
                  CardWidget(imagePath: 'images/treadmill.png'),
                  SizedBox(width: 5.0),
                  CardWidget(imagePath: 'images/bike.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  String imagePath = '';

  CardWidget({super.key, required final imagePath}) {
    this.imagePath = imagePath;
  }

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      elevation: 2.0,
      child: Container(
        width: 160.0,
        height: 160.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage('assets/$imagePath'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
