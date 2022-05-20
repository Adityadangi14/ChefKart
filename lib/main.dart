import 'package:chefkart/modules/home_page/home_page.dart';
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
      title: 'ChefKart',
      theme: ThemeData(
        textTheme: TextTheme(),
        primarySwatch: Colors.amber,
      ),
      home: HomePage(),
    );
  }
}





