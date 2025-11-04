import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hymns/pages/home.dart';
import 'firebase_options.dart'; // 👈 must be imported

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, // 👈 platform config added
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AFM Hymn Book',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 163, 117, 241),
        ),
      ),
      home: Home(),
    );
  }
}
