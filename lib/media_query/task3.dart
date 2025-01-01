import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Task3 extends StatefulWidget {
  const Task3({super.key});

  @override
  State<Task3> createState() => _Task3State();
}

class _Task3State extends State<Task3> {
  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            height: 100.h,
            width: 200.w,
          ),
          Container(
            color: Colors.red,
            height: hight * .3,
            width: width / 2,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text('this is testing'),
                  Text('this is testing'),
                  Text('this is testing'),
                  Text('this is testing'),
                  Text('this is testing'),
                  Text('this is testing'),
                  Text('this is testing'),
                  Text('this is testing'),
                  Text('this is testing'),
                  Text('this is testing'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.yellow,
            height: hight * .5,
            width: width,
            child: const Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        suffixIcon: Icon(Icons.visibility),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.red),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide:
                              BorderSide(width: 1, color: Colors.orange),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.green),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                              width: 1,
                            )),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide:
                                BorderSide(width: 1, color: Colors.black)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                                width: 1, color: Colors.yellowAccent)),
                        hintText: 'enter you email',
                        hintStyle: TextStyle(color: Colors.white)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
