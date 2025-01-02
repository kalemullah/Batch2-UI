import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTabbarScreen extends StatefulWidget {
  const CustomTabbarScreen({super.key});

  @override
  State<CustomTabbarScreen> createState() => _CustomTabbarScreenState();
}

class _CustomTabbarScreenState extends State<CustomTabbarScreen> {
  bool isplace = true;
  void selectTab(val) {
    setState(() {
      isplace = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.r),
                  color: Colors.grey),
              height: 40.h,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      selectTab(true);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.r),
                          color: isplace ? Colors.green : Colors.grey),
                      height: 40.h,
                      width: 175,
                      child: Center(
                          child: Text(
                        'place bid',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w700),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      selectTab(false);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.r),
                          color: isplace ? Colors.grey : Colors.green),
                      height: 40.h,
                      width: 174,
                      child: Center(
                          child: Text(
                        'buy now',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppins',
                            fontWeight:
                                isplace ? FontWeight.w700 : FontWeight.w300),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ),
          isplace
              ? Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.red,
                  child: Center(child: Text('place bid')),
                )
              : Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.green,
                  child: Center(child: Text('buy now')),
                ),
        ],
      ),
    );
  }
}
