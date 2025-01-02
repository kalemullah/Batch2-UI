import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StackScreen extends StatefulWidget {
  const StackScreen({super.key});

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 200.h,
                width: double.infinity,
                color: Colors.blue.withOpacity(.8),
              ),
              Positioned(
                top: 90.h,
                left: 50.w,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 1.sw - 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white.withOpacity(.8),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5,
                              spreadRadius: 2,
                              color: Colors.grey.withOpacity(.5))
                        ]),
                    height: 200.h,
                    child: Column(
                      children: [
                        SizedBox(height: 70.h),
                        Text(
                          'Maria',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25.sp),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          'ALbany Now York',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.sp),
                        ),
                        SizedBox(height: 25.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'testing',
                                  style: TextStyle(color: Colors.black),
                                ),
                                Text(
                                  '100',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'testing',
                                  style: TextStyle(color: Colors.black),
                                ),
                                Text(
                                  '100',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'testing',
                                  style: TextStyle(color: Colors.black),
                                ),
                                Text(
                                  '100',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 50.h,
                left: 140.w,
                child: Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/ic_launcher.png'),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
