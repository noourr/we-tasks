import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  String? email;
  String? name;
  String? password;
  Login({super.key, this.name, this.email, this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Column(
        // crossAxisAlignment: .center,
        children: [
          Text(name!, style: TextStyle(color: Colors.black, fontSize: 30)),
          Text(email!, style: TextStyle(color: Colors.black, fontSize: 30)),
          Text(password!, style: TextStyle(color: Colors.black, fontSize: 30)),
        ],
      ),
    );
  }
}
