import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FabBottomBarExample(),
  ));
}

class FabBottomBarExample extends StatefulWidget {
  @override
  _FabBottomBarExampleState createState() => _FabBottomBarExampleState();
}

class _FabBottomBarExampleState extends State<FabBottomBarExample> {
  int _selectedTab = 0;
  bool _fabExpanded = false;

  void _toggleFab() {
    setState(() {
      _fabExpanded = !_fabExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BottomAppBar with FAB')),
      body: Center(
        child: Text('TAB: $_selectedTab', style: TextStyle(fontSize: 24)),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (_fabExpanded) ...[
            FloatingActionButton(
              mini: true,
              onPressed: () => print('Email'),
              child: Icon(Icons.email),
            ),
            SizedBox(height: 10),
            FloatingActionButton(
              mini: true,
              onPressed: () => print('Phone'),
              child: Icon(Icons.phone),
            ),
            SizedBox(height: 10),
            FloatingActionButton(
              mini: true,
              onPressed: () => print('Message'),
              child: Icon(Icons.message),
            ),
            SizedBox(height: 10),
          ],
          FloatingActionButton(
            onPressed: _toggleFab,
            child: Icon(_fabExpanded ? Icons.close : Icons.add),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.dashboard),
              onPressed: () => setState(() => _selectedTab = 0),
            ),
            IconButton(
              icon: Icon(Icons.list),
              onPressed: () => setState(() => _selectedTab = 1),
            ),
            SizedBox(width: 40), // Espaço pro FAB
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () => setState(() => _selectedTab = 2),
            ),
            IconButton(
              icon: Icon(Icons.info),
              onPressed: () => setState(() => _selectedTab = 3),
            ),
          ],
        ),
      ),
    );
  }
}