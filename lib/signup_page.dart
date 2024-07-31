import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gastrolley/home_page.dart';
import 'package:gastrolley/login_page.dart';

class Signup extends StatelessWidget {
  String email = "", password = "";
  TextEditingController _contactController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> registration(BuildContext context) async {
    try {
      final UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      ScaffoldMessenger.of(context as BuildContext).showSnackBar(
        SnackBar(
          content: Text(
            "Registered Successfully",
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      );
      Navigator.push(context as BuildContext,
          MaterialPageRoute(builder: (context) => MyHomePage()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        ScaffoldMessenger.of(context as BuildContext).showSnackBar(SnackBar(
          backgroundColor: Colors.orangeAccent,
          content: Text(
            "Password Provided is too Weak",
            style: TextStyle(fontSize: 20.0),
          ),
        ));
      } else if (e.code == "email-already-in-use") {
        ScaffoldMessenger.of(context as BuildContext).showSnackBar(
          SnackBar(
            backgroundColor: Colors.orangeAccent,
            content: Text(
              "Account Already exits",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Stack(
                // Add a Stack widget for layering
                children: [
          Container(
            // Container for background image
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/MY GAS.jpg'),
                fit: BoxFit.cover,
                opacity: 0.3, // Adjust opacity as needed
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(16),
              child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      TextFormField(
                        controller: _contactController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter correct number';
                          }
                          return null;
                        },
                        decoration:
                            InputDecoration(labelText: 'Enter contact number'),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        controller: _usernameController,
                        validator: (value) {
                          if (value == null || value.contains('@')) {
                            return 'Please enter valid username';
                          }
                          return null;
                        },
                        decoration: InputDecoration(labelText: 'Set username'),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        controller: _passwordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please set some password';
                          }
                          return null;
                        },
                        obscureText: true,
                        decoration: InputDecoration(labelText: 'Set password'),
                      ),
                      SizedBox(height: 30),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Loginpage()),
                          );
                        },
                        child: Text(
                          'Already have an account? Click here!',
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () async {
                          final form = formKey.currentState!;
                          if (form.validate()) {
                            form.save();
                            // await registration(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyHomePage()),
                            ); // Pass the context here
                          }
                        },
                        child: Text('Register'),
                      ),
                    ],
                  )))
        ])));
  }
}
