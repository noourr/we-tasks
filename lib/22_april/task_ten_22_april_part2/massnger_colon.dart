import 'package:flutter/material.dart';

class MassngerColon extends StatelessWidget {
  MassngerColon({super.key});

  List<String> images = [
    "five.png",
    "four.jpg",
    "one.jpg",
    "six.jpg",
    "three.jpeg",
    "two.jpg",
    "seven.jpg",
    "eight.jpg",
    "nine.jpg",
    "ten.jpg",
    
  ];
  List<String> names = ['ss', 'mm', 'cc', 'vv', 'rr', 'ff', 'll', 'vv', 'rr', 'ff'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text(
          'Massanger colone',
          style: TextStyle(fontSize: 30, color: Colors.green),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .start,
          children: [
            ////////// the one item
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < images.length; i++)
                    Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(
                              "assets/images/${images[i]}",
                            ),
                          ),
                          Text(names[i], style: TextStyle(fontSize: 30)),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(height: 20),
        
        
        
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                for(int i=0; i<images.length; i++)
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          // crossAxisAlignment: .start,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage(
                                "assets/images/${images[i]}",
                              ),
                            ),
                            Text(names[i], style: TextStyle(fontSize: 30)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('10 Am', style: TextStyle(fontSize: 30)),
                      ),
                    ],
                  ),
                  
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
