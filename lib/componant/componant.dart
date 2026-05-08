import 'package:flutter/material.dart';

Widget button1({
  required String? butName,
  required Function() butAction,
  Color butBackGroundColor = const Color(0xFFD4D4D2),
  Color butColor = Colors.white,
}) {
  return RawMaterialButton(
    shape: const CircleBorder(),
    constraints: const BoxConstraints.tightFor(width: 90, height: 90),
    fillColor: Colors.grey,
    onPressed: butAction,
    child: Text(butName!, style: TextStyle(fontSize: 45, color: butColor)),
  );
}


class CalcButton extends StatelessWidget{
   String? butName;
   VoidCallback? butAction;
  Color? butBackGroundColor;
  Color? textColor ;
  CalcButton({super.key, required this.butName, required this.butAction , this.butBackGroundColor,this.textColor});
  @override
  Widget build(BuildContext context){
    return RawMaterialButton(
    shape: const CircleBorder(),
    constraints: const BoxConstraints.tightFor(width: 90, height: 90),
    fillColor: butBackGroundColor,
    onPressed: butAction,
    child: Text(butName!, style: TextStyle(fontSize: 45, color: textColor)),
  );
  }
  
}