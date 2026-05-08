import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  Color? color;
  String? colorName;
  RedPage({super.key,  this.color, this.colorName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: color,
      body: Column(
        crossAxisAlignment: .center,
        children: [
          Text(colorName!, style: TextStyle(color: Colors.white, fontSize: 30)),
        ],
      ),
    );
  }
}
