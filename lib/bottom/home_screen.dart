import 'package:batch2ui/bottom/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isupcoming = true;
  List names = ['ali', 'umar', 'usman', 'mutaza', 'hamza', 'usama', 'yasir'];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 25.h),
          Text(
            'English TalkE',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 25.h),
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Classes',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 25.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isupcoming = true;
                  });
                },
                child: Container(
                  height: 40.h,
                  width: 150.w,
                  decoration: BoxDecoration(
                      color: isupcoming ? Colors.amber : Colors.white,
                      border: Border.all(
                          color: isupcoming ? Colors.white : Colors.amber),
                      borderRadius: BorderRadius.circular(
                        20.r,
                      )),
                  child: Center(
                    child: Text(
                      'Upcoming',
                      style: TextStyle(
                        color: isupcoming ? Colors.white : Colors.amber,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isupcoming = false;
                  });
                  print('this is upcoming value $isupcoming');
                },
                child: Container(
                  height: 40.h,
                  width: 150.w,
                  decoration: BoxDecoration(
                      color: isupcoming ? Colors.white : Colors.amber,
                      border: Border.all(
                        color: isupcoming ? Colors.amber : Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Center(
                    child: Text(
                      'Past',
                      style: TextStyle(
                        color: isupcoming ? Colors.amber : Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: names.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.h, vertical: 5.w),
                    child: GestureDetector(
                      onTap: () {
                        print('this is name ${names[index]}');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                      name: names[index],
                                      indexes: index,
                                    )));
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            boxShadow: [
                              BoxShadow(blurRadius: 2, color: Colors.grey)
                            ]),
                        child: Text('${names[index]}'),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
