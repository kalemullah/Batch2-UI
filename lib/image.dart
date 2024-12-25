import 'package:flutter/material.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          color: Colors.teal,
        ),
        Container(
          height: 200,
          width: double.infinity,
          color: Colors.red,
        ),
        Container(
          height: 200,
          width: double.infinity,
          color: Colors.red,
        ),
        Container(
          height: 200,
          width: double.infinity,
          color: Colors.red,
        ),
        Container(
          height: 200,
          width: double.infinity,
          color: Colors.red,
        ),
        Container(
          height: 200,
          width: double.infinity,
          color: Colors.red,
        ),
        Container(
          height: 200,
          width: double.infinity,
          color: Colors.teal,
        ),
      ],
    ));
  }
}
