import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prayer_assitant/Core/AppColors.dart';
import 'package:prayer_assitant/Core/common_methods.dart';
import 'package:quran/quran.dart' as quran;
import '../OnboardingScreeen/onboarding_contents.dart';

class QuranScreen2 extends StatefulWidget {
  const QuranScreen2({Key? key}) : super(key: key);

  @override
  State<QuranScreen2> createState() => _QuranScreen2State();
}

class _QuranScreen2State extends State<QuranScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quran Demo"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Juz Number: \n${quran.getJuzNumber(18, 1)}"),
              Text("\nJuz URL: \n${quran.getJuzURL(15)}"),
              Text(
                  "\nSurah and Verses in Juz 15: \n${quran.getSurahAndVersesFromJuz(15)}"),
              Text("\nSurah Name: \n${quran.getSurahName(19)}"),
              Text("\nSurah Name (English): \n${quran.getSurahNameArabic(19)}"),
              Text("\nSurah URL: \n${quran.getSurahURL(18)}"),
              Text("\nTotal Verses: \n${quran.getVerseCount(18)}"),
              Text(
                  "\nPlace of Revelation: \n${quran.getPlaceOfRevelation(18)}"),
              const Text("\nBasmala: \n${quran.basmala}"),
              Text("\nVerse 1: \n${quran.getVerse(18, 1)}"),
              Text("\nVerse 1: \n${quran.getVerse(18, 2)}"),
              Text("\nVerse 1: \n${quran.getVerse(18, 3)}"),
              Text("\nVerse 1: \n${quran.getVerse(18, 4)}"),
              Text("\nVerse 1: \n${quran.getVerse(19, 5)}"),
            ],
          ),
        ),
      ),
    );

    /*Scaffold(
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
                              child: Center(child: Tstyles(text: "Surah Al-Fatiha",Fsize: 21.sp,bold: FontWeight.bold,color: AppColors.witheColor)),
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(

                              itemCount: 6,
                              itemBuilder: (context, int index) {
                                return Container(


                                  height: 65.h,
                                  width: 350.w,

                                  child: Column(

                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [


                                      ListTile(


                                        title: Tstyles(text:"ٱلْحَمْدُ لِلَّهِ رَبِّ ٱلْعَـٰلَمِينَ",Fsize: 20.sp,bold: FontWeight.bold,Textside: TextAlign.right)  ,
                                        trailing: Padding(
                                          padding:  EdgeInsets.only(bottom: 8),
                                          child: Container(
                                              height: 20.h,
                                              width: 20.w,




                                              decoration: BoxDecoration(
                                                color: AppColors.witheColor,
                                                shape: BoxShape.circle,
                                                boxShadow:  [

                                                  BoxShadow( color: Colors.black45,spreadRadius: 2.r),
                                                ],
                                              ),
                                              child: Center(child: Tstyles(text:" ${index+1} ",Fsize: 14.sp,bold: FontWeight.bold,))),
                                        )  ,



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


    );*/
  }
}
