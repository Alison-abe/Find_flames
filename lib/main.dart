import 'package:find_flames/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Find Flames',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        
      ),
      home: const Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

