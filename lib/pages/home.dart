import 'package:flutter/material.dart';
import 'package:hymns/services/support_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            Row(
              children: [
                Card.outlined(
                  elevation: 2.0,
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                        image: AssetImage('assets/images/man.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Card.outlined(
                  elevation: 2.0,
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                        image: AssetImage('assets/images/meditate.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
