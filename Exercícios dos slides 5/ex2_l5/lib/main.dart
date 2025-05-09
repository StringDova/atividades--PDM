import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue,
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            fontSize: 24,
            color: Colors.white,
          )
        )
      ),
      home: ThemeDataApp(),
    );
  }
}

class ThemeDataApp extends StatelessWidget {
  const ThemeDataApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Text("ThemeData App", style: Theme.of(context).textTheme.bodyLarge),
        ),
    );
  }
}