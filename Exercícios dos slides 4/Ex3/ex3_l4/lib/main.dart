import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TodoApp(),
  ));
}

class TodoApp extends StatefulWidget {
  @override
  _TodoAppState createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  List<bool> _taskCompleted = List.generate(5, (index) => false);
  List<String> _tasks = [
    'Task 2022-07-09 18:08:30',
    'Task 2022-07-09 18:09:45',
    'Task 2022-07-09 18:10:20',
    'Task 2022-07-09 18:11:05',
    'Task 2022-07-09 18:12:15'
  ];
  bool showCompleted = false;

  @override
  Widget build(BuildContext context) {
    
    List<String> tasksToShow = [];
for (int i = 0; i < _tasks.length; i++) {
  if (showCompleted && _taskCompleted[i]) {
    tasksToShow.add(_tasks[i]);
  } else if (!showCompleted && !_taskCompleted[i]) {
    tasksToShow.add(_tasks[i]);
  }
}

    return Scaffold(
      appBar: AppBar(
        title: Text('Kindacode.com'),
      ),
      body: Column(
        children: [
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              setState(() {
                showCompleted = !showCompleted;
              });
            },
            child: Text(showCompleted
                ? 'View Uncompleted Tasks'
                : 'View Completed Tasks'),
          ),
          SizedBox(height: 12),
          Text(
            'You have ${showCompleted ? _taskCompleted.where((completed) => completed).length : _taskCompleted.where((completed) => !completed).length} ${showCompleted ? "completed" : "uncompleted"} tasks',
            style: TextStyle(fontSize: 16),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasksToShow.length,
              itemBuilder: (context, index) {
                int taskIndex = _tasks.indexOf(tasksToShow[index]);
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Card(
                    color: Colors.yellow[100],
                    child: ListTile(
                      title: Text(tasksToShow[index]),
                      trailing: Checkbox(
                        value: _taskCompleted[taskIndex],
                        onChanged: (value) {
                          setState(() {
                            _taskCompleted[taskIndex] = value!;
                          });
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: Text('Aviso'),
              content: Text('Você está no App de Notas de Tarefas.'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('OK'),
                ),
              ],
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}