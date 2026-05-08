import 'package:flutter/material.dart';
import 'package:we_tassks/task_27_april/navigate.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final key = GlobalKey<FormState>();
  TextEditingController nameControl = TextEditingController();
  TextEditingController emailControl = TextEditingController();
  TextEditingController passwrodControl = TextEditingController();
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
        child: Form(
          key: key,
          child: Column(
            children: [
              SizedBox(height: 40),
              Text(' WELCOME BACK ', style: TextStyle(fontSize: 24)),
              SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: TextFormField(
                  controller: nameControl,
                  validator: (v) {
                    if (v == null || v.isEmpty) {
                      return 'Please enter your name ';
                    } else if (v.length < 4) {
                      return 'Name Must be More thean 4 charters';
                    } else {
                      return null;
                    }
                  },
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
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: TextFormField(
                  controller: emailControl,

                  validator: (v) {
                    if (v == null || v.isEmpty) {
                      return 'Please enter Your Email ';
                    } else if (!(v.contains('@gmail.com') ||
                        v.contains('@icloud.com') ||
                        v.contains('@outlock.com'))) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },

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
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: TextFormField(
                  controller: passwrodControl,

                  validator: (v) {
                    if (v == null || v.isEmpty) {
                      return 'Please ennter Your password';
                    } else if (v.length < 8 ||
                        !(v.contains(RegExp('r[A-Z]')) ||
                            v.contains(RegExp('r[a-z]')) ||
                            v.contains(RegExp('r[0-9]')) ||
                            v.contains(RegExp(r'[!@#%^&*()_+<.>":~$]')))) {
                      return 'Your password must have at least 8 char contain sympol and number and at least one uppercase';
                    }
                    return null;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    errorMaxLines: 3,
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
              SizedBox(height: 50),
              MaterialButton(
                onPressed: () {
                  if (key.currentState!.validate()) {
                    print('we are good ');
                    print(nameControl.text);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Login(
                            name: nameControl.text,
                            email: emailControl.text,
                            password: passwrodControl.text,
                          );
                        },
                      ),
                    );
                  } else {
                    print('something wrong');
                  }
                },
                color: Colors.green.shade200,
                child: Text("sign in"),
              ),
              TextButton(onPressed: () {}, child: Text("Sign Up Click here")),
            ],
          ),
        ),
      ),
    );
  }
}
