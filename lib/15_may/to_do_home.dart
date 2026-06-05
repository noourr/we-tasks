import 'package:flutter/material.dart';
import 'package:we_tassks/15_may/to_do_tile.dart';
import 'package:we_tassks/database/user_db.dart';

class ToDoHome extends StatefulWidget {
  const ToDoHome({super.key});

  @override
  State<ToDoHome> createState() => _ToDoHomeState();
}

class _ToDoHomeState extends State<ToDoHome> {
  final controller = TextEditingController();
  TasksDb db = TasksDb();
  List todoList = [];

  @override
  void initState() {
    super.initState();
    _loadTasks();
  }

  Future<void> _loadTasks() async {
    final tasks = await db.getTasks();
    setState(() {
      todoList = tasks
          .map(
            (t) => [
              t['taskName'] as String,
              (t['isCompleted'] as int) == 1,
              t['tasks_id'] as int,
            ],
          )
          .toList();
    });
  }

  void onSave() async {
    if (controller.text.trim().isNotEmpty) {
      await db.insertTask(controller.text.trim(), false);
      controller.clear();
      _loadTasks();
    }
    if (mounted) {
      Navigator.of(context).pop();
    }
  }

  void onCancel() {
    Navigator.of(context).pop();
  }

  void cheekBox(bool? value, int index) async {
    setState(() {
      todoList[index][1] = !todoList[index][1];
    });
    int id = todoList[index][2];
    await db.updateTask(id, todoList[index][1]);
  }

  void deletTask(int index) async {
    int id = todoList[index][2];
    setState(() {
      todoList.removeAt(index);
    });
    await db.deleteTask(id);
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Add a New Task',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
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
            deleteFunc: (context) {
              deletTask(index);
            },
          );
        },
      ),
    );
  }
}
