import 'package:flutter/material.dart';
import 'package:task_1/frontend/screen/card_usage.dart';
import 'package:task_1/frontend/screen/subscription_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CardUsage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
