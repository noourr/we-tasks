import 'package:flutter/material.dart';
import 'package:we_tassks/15_may/to_do_tile.dart';

class ToDoHome extends StatefulWidget {
  const ToDoHome({super.key});

  @override
  State<ToDoHome> createState() => _ToDoHomeState();
}

class _ToDoHomeState extends State<ToDoHome> {
  final controller = TextEditingController();
  void onSave() {
    setState(() {
      todoList.add([controller.text, false]);
      controller.clear();
    });
    Navigator.of(context).pop();
  }

  void onCancel() {
    Navigator.of(context).pop();
  }

  List todoList = [
    ['build an app', false],
    ['practic english', false],
  ];

  void cheekBox(bool? value, int index) {
    setState(() {
      todoList[index][1] = !todoList[index][1];
    });
  }

  void deletTask(int index) {
    setState(() {
      todoList.removeAt(index);
    });
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.yellow[400],
          content: SizedBox(
            height: 120,
            child: Column(
              mainAxisAlignment: .spaceEvenly,
              children: [
                TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Add a New Task',
                  ),
                ),
                Row(
                  mainAxisAlignment: .end,
                  children: [
                    MaterialButton(
                      onPressed: onSave,
                      color: Colors.yellow,
                      child: Text('Save'),
                    ),
                    SizedBox(width: 8),
                    MaterialButton(
                      onPressed: onCancel,
                      color: Colors.yellow,
                      child: Text('Cancel'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          'ToDo Demo',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        onPressed: createNewTask,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: todoList[index][0],
            taskDone: todoList[index][1],
            onChg: (value) {
              cheekBox(value, index);
            },
            deleteFunc: (BuildContext) {
              deletTask(index);
            },
          );
        },
      ),
    );
  }
}
