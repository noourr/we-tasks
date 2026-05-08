import 'package:flutter/material.dart';

class UnDone extends StatelessWidget {
  const UnDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .center,
      children: [
        Text('Un Done', style: TextStyle(color: Colors.red, fontSize: 30)),
      ],
    );
  }
}

// import 'package:flutter/material.dart';

// class UnDone extends StatelessWidget {
//   const UnDone({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.green,
//       child: Center(
//         child: Text(
//           "ChatScreens",
//           style: TextStyle(fontSize: 35, color: Colors.blueGrey),
//         ),
//       ),
//     );
//   }
// }
