import 'package:flutter/material.dart';
import './screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color.fromRGBO(128, 237, 153, 1)),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
