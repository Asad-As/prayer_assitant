import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prayer_assitant/Feature/DonationsScreens/donation_screen2.dart';
import 'package:prayer_assitant/Feature/DuasScreen/Quran_screen1.dart';
import 'package:prayer_assitant/Feature/HadeesSreen/hadees_screen.dart';
import 'package:prayer_assitant/Feature/HajjGuideScreen/hajjguide_screen.dart';
import 'package:prayer_assitant/Feature/HomeScreen/HomeScreen.dart';
import 'package:prayer_assitant/Feature/LoginScreen/loginscreen.dart';
import 'package:prayer_assitant/Feature/OnboardingScreeen/onboarding_screen.dart';
import 'package:prayer_assitant/Feature/PrayertimeScreen/prayertime_screen.dart';
import 'package:prayer_assitant/Feature/QuranScreens/Quran_screen2.dart';
import 'package:prayer_assitant/Feature/RamadanScreen/ramadan_screen.dart';
import 'package:prayer_assitant/Feature/RegisterScreen/Register_Screen.dart';

import 'Feature/DonationsScreens/donation_screen1.dart';
import 'Feature/QuranScreens/Quran_screen1.dart';

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
            title: 'Flutter  hello world Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            debugShowCheckedModeBanner: false,
          // home: const LoginScreen(),
          home: const DuasScreen(),
          // home:  QuranScreen1(),
          );
        }
    );
  }
}