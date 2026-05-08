import 'package:flutter/material.dart';
import 'package:we_tassks/22_april/task_ten_22_april_part1/red.dart';

class FirstApp extends StatefulWidget {
  const FirstApp({super.key});

  @override
  State<FirstApp> createState() => _FirstAppState();
}

class _FirstAppState extends State<FirstApp> {
  Color backGroundColor = Colors.white;
  Color boxColor = Colors.white;
  String boxText = '';
  List<Map> myList = [
    {'colorName': 'red', 'colorOpject': Colors.red},
    {'colorName': 'blue', 'colorOpject': Colors.blue},
    {'colorName': 'grey', 'colorOpject': Colors.grey},
    {'colorName': 'purple', 'colorOpject': Colors.purple},
    {'colorName': 'pink', 'colorOpject': Colors.pinkAccent},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(backgroundColor: Colors.teal),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: .spaceEvenly,
                children: [
                  for (int i = 0; i < myList.length; i++)
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: MaterialButton(
                        color: Colors.white,
                        onPressed: () {
                          boxColor=myList[i]["colorOpject"];
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return RedPage(
                                  color: myList[i]['colorOpject'],
                                  colorName: myList[i]['colorName'],
                                );
                              },
                            ),
                          );
                        },
                        child: Text(
                          myList[i]['colorName'],
                          style: TextStyle(color: myList[i]['colorOpject']),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: .spaceEvenly,
                children: [
                  for (int i = 0; i < myList.length; i++)
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: MaterialButton(
                        color: Colors.white,
                        onPressed: () {
                          boxColor = myList[i]['colorOpject'];
                          boxText=myList[i]['colorName'];
                          setState(() {
                            boxColor = myList[i]['colorOpject'];
                          boxText=myList[i]['colorName'];
                          });
                        },
                        child: Text(
                          myList[i]['colorName'],
                          style: TextStyle(color: myList[i]['colorOpject']),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          MaterialButton(
            color: Colors.black,
            onPressed: () {
              backGroundColor = Colors.white;
              boxColor = Colors.white;
              boxText = '';

              setState(() {});
            },
            child: Icon(Icons.restart_alt_sharp, color: Colors.white, size: 50),
          ),
          SizedBox(height: 10),
          // for(int i =0; i <myList.length; i++)
          Container(
            color: boxColor,
            width: 400,
            height: 600,
            child: Text(
              boxText,
              style: TextStyle(fontSize: 40,),
            ),
          ),
        ],
      ),
    );
  }
}
