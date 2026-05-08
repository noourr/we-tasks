import 'package:flutter/material.dart';
import 'package:we_tassks/task_8_may/to_do_screen/done.dart';
import 'package:we_tassks/task_8_may/to_do_screen/un_done.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            labelColor: Colors.white,
            tabs: [
              Tab(text: 'Done', icon: Icon(Icons.done)),
              Tab(text: 'Un done ', icon: Icon(Icons.unpublished_outlined)),
            ],
          ),
          backgroundColor: Colors.cyan,
          // leading: Icon(Icons.today),
          title: Text('Todo Colon', style: TextStyle(color: Colors.white)),
          // actions: [Icon(Icons.highlight_outlined)],
        ),
        body: TabBarView(children: [Done(), UnDone()]),
      ),
    );
  }
}
