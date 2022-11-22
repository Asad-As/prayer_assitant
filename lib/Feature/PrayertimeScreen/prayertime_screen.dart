import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prayer_assitant/Core/AppColors.dart';
import 'package:prayer_assitant/Core/common_methods.dart';

import '../OnboardingScreeen/onboarding_contents.dart';

class PrayertimeScreen extends StatefulWidget {
  const PrayertimeScreen({Key? key}) : super(key: key);

  @override
  State<PrayertimeScreen> createState() => _PrayertimeScreenState();
}

class _PrayertimeScreenState extends State<PrayertimeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyanAccent,
      body:
      SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Text('Prayer Time',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w700,
                  )),
            ),
            SizedBox(
              height: 30.h,

            ),
            Expanded(
              flex: 5,
              child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.h),
                      child: Container(

                        height: 63.h,
                        width: 350.w,
                        decoration: const BoxDecoration(
                          color: AppColors.witheColor,


                        ),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(

                              title:
                              //Text('Betabyte Tec',style: TextStyle(fontSize: 18),),

                              Tstyles(text: "Fajar",Fsize: 18.sp,bold: FontWeight.bold)  ,


                              trailing: SizedBox(

                                width: 115.w,

                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Icon(Icons.chevron_left_rounded,size: 18,),
                                      Tstyles(text: '10:${(index+20).toString()} pm',Fsize: 18.sp,),

                                      // Text('10:${(index+20).toString()} pm'),
                                      const Icon(Icons.chevron_right_rounded,size: 18,),



                                    ],
                                  ),
                                ),
                              ),


                            ),
                          ],
                        ),


                      ),
                    );
                  }),
            ),

          ],
        ),
      )


    );
  }
}
