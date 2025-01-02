import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'tab1',
                  icon: Icon(Icons.home),
                ),
                Tab(
                  text: 'tab2',
                  icon: Icon(Icons.mail_rounded),
                ),
                Tab(
                  text: 'tab3',
                  icon: Icon(Icons.person),
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            tab1Screen(),
            Center(
              child: Container(
                height: 200,
                width: 200,
                color: Colors.red,
                child: Text('tab2'),
              ),
            ),
            Center(
              child: Container(
                height: 200,
                width: 200,
                color: Colors.green,
                child: Text('tab3'),
              ),
            ),
          ])),
    );
  }
}

class tab1Screen extends StatelessWidget {
  const tab1Screen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            height: 200,
            width: 200,
            color: Colors.amber,
            child: Text('tab1'),
          ),
        ),
        Center(
          child: Container(
            height: 200,
            width: 200,
            color: Colors.red,
            child: Text('tab1'),
          ),
        ),
        Center(
          child: Container(
            height: 200,
            width: 200,
            color: Colors.amber,
            child: Text('tab1'),
          ),
        ),
      ],
    );
  }
}
