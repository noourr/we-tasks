import 'package:flutter/material.dart';
import 'package:we_tassks/componant/componant.dart';

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
        backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Colors.orange.shade400,
          leading: Icon(Icons.history, color: Colors.white, size: 40),
          title: Text('Calculate App', style: TextStyle(color: Colors.white)),
          actions: [
            Icon(Icons.calculate, color: Colors.white, size: 40),
          ],
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: .spaceEvenly,
            children: [
              SizedBox(
                height: 200,
                child: Row(
                  mainAxisAlignment: .end,
                  crossAxisAlignment: .end,
                  children: [
                    Text(
                      '0',
                      style: TextStyle(color: Colors.white, fontSize: 55),
                    ),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: .spaceEvenly,
                children: [
                  CalcButton(
                    butName: 'Del',
                    butAction: () {},
                    butBackGroundColor: Colors.grey.shade500,
                    textColor: Colors.white,
                  ),
                  CalcButton(
                    butName: 'AC',
                    butAction: () {},
                    butBackGroundColor: Colors.grey.shade500,
                    textColor: Colors.white,
                  ),
                  // button1(
                  //   butName: 'Ac',
                  //   butAction: () {},
                  //   butBackGroundColor: Color(0xFF505050),
                  // ),
                  CalcButton(
                    butName: ' % ',
                    butAction: () {},
                    butBackGroundColor: Colors.grey.shade500,
                    textColor: Colors.white,
                  ),
                  CalcButton(
                    butName: ' ÷ ',
                    butAction: () {},
                    butBackGroundColor: Color(0xFFFF9500),
                    textColor: Colors.white,
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: .spaceEvenly,

                children: [
                  CalcButton(
                    butName: '7',
                    butAction: () {},
                    butBackGroundColor: Color(0xFF505050),
                    textColor: Colors.white,
                  ),
                  CalcButton(
                    butName: '8',
                    butAction: () {},
                    butBackGroundColor: Color(0xFF505050),
                    textColor: Colors.white,
                  ),
                  CalcButton(
                    butName: '9',
                    butAction: () {},
                    butBackGroundColor: Color(0xFF505050),
                    textColor: Colors.white,
                  ),
                  CalcButton(
                    textColor: Colors.white,
                    butName: ' × ',
                    butBackGroundColor: Color(0xFFFF9500),
                    butAction: () {},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: .spaceEvenly,

                children: [
                  CalcButton(
                    butName: '4',
                    butAction: () {},
                    butBackGroundColor: Color(0xFF505050),
                    textColor: Colors.white,
                  ),
                  CalcButton(
                    butName: '5',
                    butAction: () {},
                    butBackGroundColor: Color(0xFF505050),
                    textColor: Colors.white,
                  ),
                  CalcButton(
                    butName: '6',
                    butAction: () {},
                    butBackGroundColor: Color(0xFF505050),
                    textColor: Colors.white,
                  ),
                  CalcButton(
                    butName: ' - ',
                    butAction: () {},
                    butBackGroundColor: Color(0xFFFF9500),
                    textColor: Colors.white,
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: .spaceEvenly,
                children: [
                  CalcButton(
                    butName: '1',
                    butAction: () {},
                    butBackGroundColor: Color(0xFF505050),
                    textColor: Colors.white,
                  ),
                  CalcButton(
                    butName: '2',
                    butAction: () {},
                    butBackGroundColor: Color(0xFF505050),
                    textColor: Colors.white,
                  ),
                  CalcButton(
                    butName: '3',
                    butAction: () {},
                    butBackGroundColor: Color(0xFF505050),
                    textColor: Colors.white,
                  ),
                  CalcButton(
                    butName: '+',
                    butAction: () {},
                    butBackGroundColor: Color(0xFFFF9500),
                    textColor: Colors.white,
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: .spaceEvenly,
                children: [
                  CalcButton(
                    butName: '+/-',
                    butAction: () {},
                    butBackGroundColor: Color(0xFF505050),
                    textColor: Colors.white,
                  ),
                  CalcButton(
                    butName: '0',
                    butAction: () {},
                    butBackGroundColor: Color(0xFF505050),
                    textColor: Colors.white,
                  ),
                  CalcButton(
                    butName: '.',
                    butAction: () {},
                    butBackGroundColor: Color(0xFF505050),
                    textColor: Colors.white,
                  ),
                  CalcButton(
                    butName: '=',
                    butAction: () {},
                    butBackGroundColor: Color(0xFFFF9500),
                    textColor: Colors.white,
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
