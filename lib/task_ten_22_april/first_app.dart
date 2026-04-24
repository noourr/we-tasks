import 'package:flutter/material.dart';
import 'package:we_tassks/task_ten_22_april/red.dart';


class FirstApp extends StatefulWidget {
  const FirstApp({super.key});

  @override
  State<FirstApp> createState() => _FirstAppState();
}

class _FirstAppState extends State<FirstApp> {
  Color backGroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(backgroundColor: Colors.teal),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: .spaceEvenly,
            children: [
              MaterialButton(
                color: Colors.red,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return RedPage(color: Colors.red,colorName: 'red',);
                      },
                    ),
                  );
                },
                child: Text('red', style: TextStyle(color: Colors.white)),
              ),
              MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context){
                    return RedPage(color: Colors.blue,colorName: 'blue',);
                  }));
                },
                child: Text('blue', style: TextStyle(color: Colors.white)),
              ),
              MaterialButton(
                color: Colors.blueGrey,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return RedPage(color: Colors.grey,colorName: 'grey',);
                  }));
                  // backGroundColor = Colors.blueGrey;
                  // setState(() {});
                },
                child: Text('greay', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          MaterialButton(
            color: Colors.black,
            onPressed: () {
              backGroundColor = Colors.white;
              setState(() {});
            },
            child: Icon(Icons.restart_alt_sharp, color: Colors.white, size: 50),
          ),
        ],
      ),
    );
  }
}
