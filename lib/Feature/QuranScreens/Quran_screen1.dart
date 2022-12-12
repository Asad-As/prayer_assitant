import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prayer_assitant/Core/AppColors.dart';
import 'package:prayer_assitant/Core/common_methods.dart';
import 'package:prayer_assitant/Feature/QuranScreens/Quran_screen2.dart';
import '../OnboardingScreeen/onboarding_contents.dart';
import 'package:quran/quran.dart' as quran;

class QuranScreen1 extends StatefulWidget {
  const QuranScreen1({Key? key}) : super(key: key);

  @override
  State<QuranScreen1> createState() => _QuranScreen1State();
}

class _QuranScreen1State extends State<QuranScreen1> {

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
                  child: Text('Quran',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w700,
                      )),
                ),
                SizedBox(
                  height: 15.h,

                ),
                SizedBox(
                  height: 580.h,
                  child: ListView.builder(

                      itemCount: 114,
                      itemBuilder: (context, int index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.h),
                          child: Container(

                            height: 73.h,
                            width: 350.w,
                            decoration:  BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5.r)),
                                color: AppColors.witheColor,



                            ),
                            child: Column(

                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [


                                InkWell(
                                  onTap: (){ Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>QuranScreen2(surah_No: index+1,)),
                                  );},
                                  child: ListTile(
                                    title: Tstyles(text:quran.getSurahName(index+1),Fsize: 18.sp,bold: FontWeight.bold)  ,
                                    subtitle: Tstyles(text:quran.getSurahNameArabic(index+1),Fsize: 18.sp,),
                                    leading:   Container(
                                            height: 64.h,
                                            width: 55.w,

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(5.r)),
                                          color: AppColors.btn2_Color,
                                        ),
                                        child: Center(child: Tstyles(text:" ${index+1} ",Fsize: 18.sp,bold: FontWeight.bold)))  ,


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
