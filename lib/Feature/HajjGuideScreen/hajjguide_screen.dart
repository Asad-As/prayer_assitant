import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prayer_assitant/Core/AppColors.dart';
import 'package:prayer_assitant/Core/common_methods.dart';

import '../OnboardingScreeen/onboarding_contents.dart';

class HajjGuideScreen extends StatefulWidget {
  const HajjGuideScreen({Key? key}) : super(key: key);

  @override
  State<HajjGuideScreen> createState() => _HajjGuideScreenState();
}

class _HajjGuideScreenState extends State<HajjGuideScreen> {


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
            children: [
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: Text('Hajj Guide',
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
                    itemBuilder: (context, int index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 12.h),
                        child: Container(

                          height: 63.h,
                          width: 350.w,
                          decoration: const BoxDecoration(
                            color: AppColors.witheColor,


                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 35),
                            child: Column(

                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [


                                ListTile(

                                  title:
                                  //Text('Betabyte Tec',style: TextStyle(fontSize: 18),),

                                  Tstyles(text:"Activity of Day ${index+1} ",Fsize: 18.sp,bold: FontWeight.bold)  ,

                                  subtitle: Tstyles(text: "Tawaf Al Qadum",Fsize: 13.sp,),


                                ),
                              ],
                            ),
                          ),


                        ),
                      );
                    }),
              ),

            ],
          ),
        ),
      )


    );
  }
}
