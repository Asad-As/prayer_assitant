import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prayer_assitant/Core/common_methods.dart';
import 'package:prayer_assitant/Feature/HomeScreen/HomeScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../OnboardingScreeen/onboarding_contents.dart';

 //var  finalEmail;

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();

}
class _SplashScreenState extends State<SplashScreen> {
   String? finalEmail ;
   @override
  void initState() {

    GetvalidationData().whenComplete(() => {
    Timer(Duration(seconds: 2),
    ()=>  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
      return finalEmail == null ? HomeScreen() : HomeScreen();
    }),)
    ),

    });

    super.initState();
  }

  Future GetvalidationData() async{
  final SharedPreferences sharedPreferences=  await SharedPreferences.getInstance();
  var ObtainEmail = sharedPreferences.getString('email');
  setState(() {
    finalEmail=ObtainEmail!;
  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Container(
            height: 1.sh,
            width: 1.sh,
            decoration: BoxDecoration(
              image:  DecorationImage(
                image: AssetImage(imageS.splishBKG),
                fit: BoxFit.fill,
              ),
            ),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Tstyles(text: "PRAYER \n ASSISTANT",Fsize: 50.sp,bold: FontWeight.bold,color: Colors.white,Textside:TextAlign.center),
             Tstyles(text: "The Muslim Productivity App",Fsize:20.sp,color: Colors.white,Textside:TextAlign.center)
           ],
         ),
          ),
        ),),
    );
  }
}
