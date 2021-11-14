import 'package:firebase_practise/view/home.dart';
import 'package:firebase_practise/view/login.dart';
import 'package:firebase_practise/view/profile.dart';
import 'package:firebase_practise/view/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Practise',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/home': (context) => Home(),
        '/login': (context) => Login(),
        '/register': (context) => Register(),
        '/profile': (context) => Profile()
      },
    );
  }
}
