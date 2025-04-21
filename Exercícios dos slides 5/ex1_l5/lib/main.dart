import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GridViewLocalExample(),
  ));
}

class GridViewLocalExample extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      'image': 'assets/images/taj-mahal.jpg',
      'title': 'Taj Mahal'
    },
    {
      'image': 'assets/images/angra.jpg',
      'title': 'Angra dos reis'
    },
    {
      'image': 'assets/images/ifsp.jpg',
      'title': 'IFSP Campus Bragança'
    },
    {
      'image': 'assets/images/solitude.webp',
      'title': 'Solitude - Skyrim'
    },
    {
      'image': 'assets/images/nightcity.jpg',
      'title': 'Night City'
    },
    {
      'image': 'assets/images/atibaia.jpeg',
      'title': 'Atibaia'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Grid de Lugares')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          children: items.map((item) {
            return Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    item['image']!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
                Positioned(
                  bottom: 8,
                  left: 8,
                  right: 8,
                  child: Text(
                    item['title']!,
                    style: TextStyle(
                      color: Colors.white,
                      backgroundColor: Colors.black54,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}