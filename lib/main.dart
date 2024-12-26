import 'package:batch2ui/image.dart';
import 'package:batch2ui/inst.dart';
import 'package:batch2ui/listview_builder.dart';
import 'package:batch2ui/task1.dart';
import 'package:batch2ui/task2.dart';
import 'package:flutter/material.dart';

///git init
///git add .
///git commit -m  "message"
///path
///git push origin main
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: InstaScreen(),
      // ListviewBuiderScreen(),
      //  ImageScreen(),
      //  Task1(),
      //  Task1(),
    );

    // HomePage());
  }
}

