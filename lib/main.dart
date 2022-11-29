import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prayer_assitant/Feature/HomeScreen/HomeScreen.dart';
import 'package:prayer_assitant/Feature/OnboardingScreeen/onboarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? isviewed;
void main()  async{
  runApp(MyApp());

  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isviewed = prefs.getInt('onBoard');

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
            title: 'Flutter  hello world Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            debugShowCheckedModeBanner: false,

           home:isviewed != 0 ? OnboardingScreen() : HomeScreen(),
            /*home: SplashScreen()*/
          );
        }
    );
  }
}