import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prayer_assitant/Feature/HomeScreen/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 700),
        // designSize:  Size(1.sw, 1.sh),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child)
        {
          return MaterialApp(
            title: 'Flutter  hello  i thiml  world Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            debugShowCheckedModeBanner: false,
            home: const HomeScreen(),
          );
        }
    );
  }
}