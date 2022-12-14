import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prayer_assitant/Core/AppColors.dart';
import 'package:prayer_assitant/Core/common_methods.dart';

import '../OnboardingScreeen/onboarding_contents.dart';

class RamadanScreen extends StatefulWidget {
  const RamadanScreen({Key? key}) : super(key: key);

  @override
  State<RamadanScreen> createState() => _RamadanScreenState();
}

class _RamadanScreenState extends State<RamadanScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Colors.cyanAccent,
      body:
      SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image:  AssetImage(imageS.bg),
              fit: BoxFit.cover,
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: Text('Ramadan',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w700,
                    )),
              ),
              SizedBox(
                height: 30.h,
              ),



              Container(
                child: Image.asset(imageS.ramdanDuwa,),

              ),




            ],
          ),
        ),
      )


    );
  }
}
