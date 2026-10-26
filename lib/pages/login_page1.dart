import 'package:flutter/material.dart';

class LoginPage1 extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginPage1> createState() => _LoginPage1State();
}

class _LoginPage1State extends State<LoginPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Column(
        children: [
          Text(
            "Welcome to app", 
            style: TextStyle(
              fontSize: 22, 
              fontWeight: FontWeight.bold
            )
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(hint: Text("Input Username")),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(hint: Text("Input Password")),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text('Masuk')),
        ],
      ),
    );
  }
}
