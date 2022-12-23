import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prayer_assitant/Feature/HomeScreen/HomeScreen.dart';
import 'package:prayer_assitant/Feature/OnboardingScreeen/onboarding_screen.dart';
import 'package:prayer_assitant/firebase_options.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Feature/SplashScreen/Splash_screen.dart';

int? isviewed;
Future<void> main()  async{

  WidgetsFlutterBinding.ensureInitialized();
  await
  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isviewed = prefs.getInt('onBoard');
  await prefs.setInt('onBoard', 1);
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  MyApp({super.key});

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
            title: 'Prayer Assistant',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            debugShowCheckedModeBanner: false,
           home:isviewed == 0 || isviewed == null ? OnboardingScreen() :HomeScreen(),
          );
        }
    );
  }
}