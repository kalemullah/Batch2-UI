import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class InstaScreen extends StatefulWidget {
  const InstaScreen({super.key});

  @override
  State<InstaScreen> createState() => _InstaScreenState();
}

class _InstaScreenState extends State<InstaScreen> {
  double value = 3.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Stories'),
                Text('watch all'),
              ],
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      // color: Colors.red,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage('assets/ic_launcher.png'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('ali')
                        ],
                      ),
                    ),
                  );
                }),
          ),
          Divider(
            endIndent: 20,
            indent: 20,
          ),
          RatingStars(
            value: value,
            onValueChanged: (v) {
              //
              setState(() {
                value = v;
              });
            },
            starBuilder: (index, color) => Icon(
              Icons.star,
              color: color,
            ),
            starCount: 5,
            starSize: 20,
            valueLabelColor: const Color(0xff9b9b9b),
            valueLabelTextStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 12.0),
            valueLabelRadius: 10,
            maxValue: 5,
            starSpacing: 2,
            maxValueVisibility: true,
            valueLabelVisibility: true,
            animationDuration: Duration(milliseconds: 1000),
            valueLabelPadding:
                const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
            valueLabelMargin: const EdgeInsets.only(right: 8),
            starOffColor: const Color(0xffe7e8ea),
            starColor: Colors.yellow,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                  itemCount: 15,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Container(
                      color: index.isEven ? Colors.green : Colors.red,
                      child: Center(child: Text('$index')),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
