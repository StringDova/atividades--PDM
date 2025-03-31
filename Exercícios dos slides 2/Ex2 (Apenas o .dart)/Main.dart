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
          title: Center(
            child: Text(
              "My Home Page",
              style: TextStyle(
                color: Colors.white,
                fontSize: 36
              ),
              ),
          ),
          backgroundColor: Colors.purple
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                "Hello, World!",
                style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 28
                ),
              ),
              SizedBox(
                height: 40,
                width: 250,
                child: Card(
                  child: Center(
                    child: Text(
                      'Hello World!',
                    )
                  )
                )
              ),
              TextButton(
                onPressed: () => {},
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(const Color.fromARGB(255, 49, 108, 210)),
                ),
                child: SizedBox(
                  height: 30,
                  width: 220,
                  child: Center(
                    child: Text(
                      'A button', 
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                      ),
                    )
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}