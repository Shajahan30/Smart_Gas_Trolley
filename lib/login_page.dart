import 'package:flutter/material.dart';

import 'home_page.dart';

class Loginpage extends StatelessWidget {
  TextEditingController _UsernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber.shade600,
        appBar: AppBar(
          backgroundColor: Colors.cyan.shade600,
          title: Text('MyGas'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              TextField(
                textAlign: TextAlign.left,
                controller: _UsernameController,
                decoration:
                    InputDecoration(labelText: 'Enter Registered number'),
              ),
              SizedBox(height: 20),
              TextField(
                textAlign: TextAlign.left,
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  String username = _UsernameController.text;
                  String password = _passwordController.text;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
