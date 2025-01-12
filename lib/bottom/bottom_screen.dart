import 'package:batch2ui/bottom/home_screen.dart';
import 'package:batch2ui/bottom/notification.dart';
import 'package:flutter/material.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({super.key});

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  int currenindex = 0;
  List pages = [
    HomeScreen(),
    NotificationScreen(),
    Container(
      color: Colors.teal,
      height: 400,
      width: double.infinity,
    ),
    Container(
      color: Colors.teal,
      height: 400,
      width: double.infinity,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currenindex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notification_important), label: 'Notification'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.history,
              ),
              label: 'History'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'proifile'),
        ],
        currentIndex: currenindex,
        showUnselectedLabels: true,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            currenindex = index;
          });
        },
      ),
    );
  }
}
