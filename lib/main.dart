import 'package:assignment/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// This is the root of the web app that is responsible for running the app
// The app can be runned by pressing the Function key 5 on your keyboard on by navigation through the terminal
// and typing out flutter run
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assigment',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const HomePage(),
    );
  }
}
