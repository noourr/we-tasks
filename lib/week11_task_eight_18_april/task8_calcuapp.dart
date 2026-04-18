import 'package:flutter/material.dart';

void main() {
  FirstApp calc = FirstApp();
  runApp(calc);
}

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 40,),
          title: Text(
            'Calculate App',
            style: TextStyle(
              color: Colors.white
            ),
            ),
            actions: [Icon(
              Icons.calculate_outlined,
              color: Colors.white,
              size: 40,
            )],
        ),
        body: SafeArea(
          child: Column(
            children: [
              
              Column( 
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                
                children: [
                  Container(
                    color: Colors.white,
                    // width: double.infinity,
                    height: 4,
                  ),
                  SizedBox(
                    height: 200,
                    child: Row(
                      mainAxisAlignment: .end,
                      children: [
                        Text('0', style: TextStyle(
                          color: Colors.white,
                          fontSize: 55
                        ),),
                      ],
                    ),
                  ),
              
                  Row(
                    mainAxisAlignment: .spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.backspace_outlined,
                          color:Colors.deepOrange,
                          size: 55,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "AC",
                          style: TextStyle(fontSize: 55, color: Colors.deepOrange,),
                        ),
                      ),
                      TextButton(
              
                        onPressed: () {},
                        child: Text(
                          "%",
                          style: TextStyle(fontSize: 55, color:Colors.deepOrange,),
                        ),
                      ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "/",
                          style: TextStyle(fontSize: 55, color: Colors.deepOrange,),
                        ),
                      ),
                    ],
                  ),
                 Row(
                                  mainAxisAlignment: .spaceEvenly,
              
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          " 7 ",
                          style: TextStyle(fontSize: 55, color: Colors.white),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          " 8 ",
                          style: TextStyle(fontSize: 55, color: Colors.white),
                        ),
                      ),
                      TextButton(
              
                        onPressed: () {},
                        child: Text(
                          " 9 ",
                          style: TextStyle(fontSize: 55, color: Colors.white),
                        ),
                      ),
                    TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.highlight_remove_sharp,
                          color: Colors.deepOrange,
                          size: 55,
                        )
                      ),
                    ],
                  ),
                   Row(
                                  mainAxisAlignment: .spaceEvenly,
              
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          " 4 ",
                          style: TextStyle(fontSize: 55, color: Colors.white),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          " 5 ",
                          style: TextStyle(fontSize: 55, color: Colors.white),
                        ),
                      ),
                      TextButton(
              
                        onPressed: () {},
                        child: Text(
                          " 6 ",
                          style: TextStyle(fontSize: 55, color: Colors.white),
                        ),
                      ),
                    TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.remove,
                          size: 55,
                          color: Colors.deepOrange,
                        )
                      ),
                    ],
                  ),
                   Row(
                                  mainAxisAlignment: .spaceEvenly,
              
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          " 1 ",
                          style: TextStyle(fontSize: 55, color: Colors.white),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          " 2 ",
                          style: TextStyle(fontSize: 55, color: Colors.white),
                        ),
                      ),
                      TextButton(
              
                        onPressed: () {},
                        child: Text(
                          " 3 ",
                          style: TextStyle(fontSize: 55, color: Colors.white),
                        ),
                      ),
                    TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.add,
                          color: Colors.deepOrange,
                          size: 55,
                        )
                      ),
                    ],
                  ),
                   Row(
                                  mainAxisAlignment: .spaceEvenly,
              
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "+/-",
                          style: TextStyle(fontSize: 50, color: Colors.white),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          " 0 ",
                          style: TextStyle(fontSize: 55, color: Colors.white),
                        ),
                      ),
                      TextButton(
              
                        onPressed: () {},
                        child: Text(
                          " . ",
                          style: TextStyle(fontSize: 55, color: Colors.white),
                        ),
                      ),
                    TextButton(
                        onPressed: () {},
                        child:Text(
                          " = ",
                          style: TextStyle(fontSize: 55, color: Colors.deepOrange,),
                        ),
                      ),
                    ],
                  ),
                  
                ],
              ),
            ],
          ),
          
        ),
      ),
    );
  }
}
