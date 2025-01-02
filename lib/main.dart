import 'package:batch2ui/custom_tabbar/custom_tabbar.dart';
import 'package:batch2ui/image.dart';
import 'package:batch2ui/inst.dart';
import 'package:batch2ui/listview_builder.dart';
import 'package:batch2ui/media_query/task3.dart';
import 'package:batch2ui/stack/stack.dart';
import 'package:batch2ui/tab_bar/tab_bar.dart';
import 'package:batch2ui/task1.dart';
import 'package:batch2ui/task2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///git init
///git add .
///git commit -m  "message"
///path
///git push origin main
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: const CustomTabbarScreen(),
    );
  }
}
