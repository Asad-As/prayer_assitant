import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prayer_assitant/Core/AppColors.dart';
import 'package:prayer_assitant/Core/common_methods.dart';

import '../OnboardingScreeen/onboarding_contents.dart';

class DuasScreen extends StatefulWidget {
  const DuasScreen({Key? key}) : super(key: key);

  @override
  State<DuasScreen> createState() => _DuasScreenState();
}

class _DuasScreenState extends State<DuasScreen> {

  List duas =[
    ' May Allah have mercy on us and protect us'
    'from any pain and suffering ',

        'May Allah have mercy on us and protect us '
         'from any pain and suffering ',
    ' May Allah have mercy on us and protect us'
        'from any pain and suffering ',

    'May Allah have mercy on us and protect us '
        'from any pain and suffering ',
    ' May Allah have mercy on us and protect us'
        'from any pain and suffering ',

    'May Allah have mercy on us and protect us '
        'from any pain and suffering ',





  ];


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
                  child: Text('Duas',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w700,
                      )),
                ),
                SizedBox(
                  height: 30.h,

                ),
                SizedBox(
                  height: 580.h,
                  child: ListView.builder(

                      itemCount: duas.length,
                      itemBuilder: (context, int index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.h),
                          child: Container(

                            height: 65.h,
                            width: 350.w,
                            decoration:  BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5.r)),
                                color: AppColors.witheColor,



                            ),
                            child: Column(

                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [


                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: ListTile(


                                    title: Tstyles(text:duas[index],Fsize: 12.sp,bold: FontWeight.bold)  ,


                                    leading:   Container(
                                            height: 64.h,
                                            width: 55.w,

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(5.r)),
                                          color: AppColors.btn2_Color,
                                        ),
                                        child: Center(child: Tstyles(text:" ${index+1} Dua",Fsize: 16.sp,bold: FontWeight.bold,color: AppColors.witheColor,Textside: TextAlign.center)))  ,


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
          ),
        )


    );
  }
}
