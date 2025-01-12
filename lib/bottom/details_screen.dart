import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final name;
  final indexes;
  const DetailsScreen({super.key, this.name, required this.indexes});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.name,
              style: TextStyle(color: Colors.black),
            ),
            Text(
              widget.indexes.toString(),
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
