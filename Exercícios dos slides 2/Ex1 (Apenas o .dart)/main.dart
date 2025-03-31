import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter is definitely a language!",
            style: TextStyle(color: Colors.white)
            ),
          backgroundColor: Colors.purple
        ),
        body: Container(
          margin: const EdgeInsets.all(100.0),
          padding: const EdgeInsets.all(10),
          color: Colors.deepOrange,
          width: 100.0,
          height: 100.0,
          child: Text("Hi Mom 🐣"),
        ),
      ),
    );
  }
}