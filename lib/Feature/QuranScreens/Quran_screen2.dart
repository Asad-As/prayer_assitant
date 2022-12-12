import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prayer_assitant/Core/AppColors.dart';
import 'package:prayer_assitant/Core/common_methods.dart';
import 'package:quran/quran.dart' as quran;

import '../OnboardingScreeen/onboarding_contents.dart';

class QuranScreen2 extends StatelessWidget {
  int surah_No;
  QuranScreen2({Key? key, required this.surah_No}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
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
                  height: 20.h,

                ),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.r)),
                          color: Colors.white70



                        ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 55.h,
                              width: double.infinity,
                              decoration:  BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(5.r)),
                                color: AppColors.btn2_Color,



                              ),
                              child: Center(child: Tstyles(text: quran.getSurahNameArabic(surah_No),Fsize: 21.sp,bold: FontWeight.bold,color: AppColors.witheColor)),
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                            itemCount: quran.getVerseCount(surah_No),
                              itemBuilder: (context, int index) {
                                return Container(
                                  width: 350.w,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ListTile(
                                        title: quran.isSajdahVerse(surah_No, index+1)?
                                        Tstyles(text:quran.getVerse(surah_No, index+1)+"     @سجدة",Fsize: 20.sp,bold: FontWeight.bold,Textside: TextAlign.right)
                                        :
                                        Tstyles(text:quran.getVerse(surah_No, index+1),Fsize: 20.sp,bold: FontWeight.bold,Textside: TextAlign.right)  ,
                                        trailing: Padding(
                                          padding:  EdgeInsets.only(bottom: 8),
                                          child: Container(
                                              height: 30.h,
                                              width: 30.w,
                                              decoration: BoxDecoration(
                                                color: AppColors.witheColor,
                                                shape: BoxShape.circle,
                                                boxShadow:  [
                                                  BoxShadow( color: Colors.black45,spreadRadius: 2.r),
                                                ],
                                              ),
                                              child: Center(child: Tstyles(text:"${index+1}",Fsize: 14.sp,bold: FontWeight.bold,)

                                              )),
                                        ),
                                        //leading: quran.isSajdahVerse(surah_No, index+1)?
                                         ),
                                    ],
                                  ),


                                );
                              }),
                          )

                        ],
                      )
                    ),
                  ),
                ),

              ],
            ),
          ),
        )


    );
  }
}

/*   Text("Juz Number: \n${quran.getJuzNumber(18, 1)}"),
              Text("\nJuz URL: \n${quran.getJuzURL(15)}"),
              Text(
                  "\nSurah and Verses in Juz 15: \n${quran.getSurahAndVersesFromJuz(15)}"),*/
 //Text("\nSurah Name: \n${quran.getSurahName(surah_No)}"),
/*  Text("\nSurah Name (English): \n${quran.getSurahNameArabic(19)}"),
              Text("\nSurah URL: \n${quran.getSurahURL(18)}"),
              Text("\nTotal Verses: \n${quran.getVerseCount(18)}"),
              Text(
                  "\nPlace of Revelation: \n${quran.getPlaceOfRevelation(18)}"),
              const Text("\nBasmala: \n${quran.basmala}"),
              Text("\nVerse 1: \n${quran.getVerse(18, 1)}"),
              Text("\nVerse 1: \n${quran.getVerse(18, 2)}"),
              Text("\nVerse 1: \n${quran.getVerse(18, 3)}"),
              Text("\nVerse 1: \n${quran.getVerse(18, 4)}"),
              Text("\nVerse 1: \n${quran.getVerse(19, 5)}"),*/
