import 'package:flutter/material.dart';
import 'package:submission_dicoding/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Submission Dicoding Alessandro',
      theme: ThemeData.light(),
      home: HomeScreen(),
      initialRoute: '/',
    );
  }
}
