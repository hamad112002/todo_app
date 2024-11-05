import 'package:flutter/material.dart';
import 'package:todo_assignment/home_page.dart';
import 'package:todo_assignment/main_page.dart';
import 'package:todo_assignment/new_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}
