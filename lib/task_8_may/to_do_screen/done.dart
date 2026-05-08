import 'package:flutter/material.dart';

class Done extends StatelessWidget {
  const Done({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .center,
      children: [
        Text('Done', style: TextStyle(color: Colors.green, fontSize: 30)),
      ],
    );
  }
}
