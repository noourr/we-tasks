import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.ac_unit_sharp),
        title: Text(
          'Log In Demo Screen',
          style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
        ),
        backgroundColor: Colors.cyan,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            Text(' WELCOME BACK ', style: TextStyle(fontSize: 24)),
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: TextFormField(
                              keyboardType: TextInputType.text,
        
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: ' Enter Your Name ',
                  label: Text('Name'),
                  labelStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  prefixIcon: Icon(Icons.abc, size: 40),
                ),
              ),
            ),
            SizedBox(height: 30),
        
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: ' Enter Your Email ',
                  label: Text('Email '),
                  labelStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  prefixIcon: Icon(Icons.email, size: 40),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  hintText: ' Enter Your Password ',
                  label: Text('Password'),
                  labelStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  prefixIcon: Icon(Icons.password, size: 40),
                ),
              ),
            ),
            SizedBox(height: 50,),
            MaterialButton(
                onPressed: (){},
              color: Colors.green.shade200,
              child: Text("sign in"),
            ),
            TextButton(
                onPressed: (){},
                  child: Text("Sign Up Click here"))
          ],
        ),
      ),
    );
  }
}
