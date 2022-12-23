import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prayer_assitant/Core/AppColors.dart';
import 'package:prayer_assitant/Core/common_methods.dart';
import 'package:prayer_assitant/Feature/QuranScreens/Quran_screen2.dart';

import '../OnboardingScreeen/onboarding_contents.dart';

class QuranScreen1 extends StatefulWidget {
  const QuranScreen1({Key? key}) : super(key: key);

  @override
  State<QuranScreen1> createState() => _QuranScreen1State();
}

class _QuranScreen1State extends State<QuranScreen1> {
  final editcontroller = TextEditingController();
  List sorah =[
    ' Al-Fatihah',
        'Al-Baqarah',
        ' Al-‘Imran',
        "An-Nisa",
        'Al-Ma’idah',
        'Al-An’am',
        'Al-A’raf',
        'Al-Anfal',
        'Al-Bara',
        'Yunus',
        'Hud',
        'Yusuf',
        'Ar-Ra’d',
        'Ibrahim',
        'Al-Hijr',
        'An-Nahl',
        'Bani Isra’il',
        'Al-Kahf',
        'Maryam',
        'Ta Ha',
        'Al-Anbiya',
        'Al-Hajj',
        'Al-Mu’minun',
        'An-Nur',
        'Al-Furqan',
        'Ash-Shu’ara',
        'An-Naml',
        'Al-Qasas',
        'Al-‘Ankabut',
        'Ar-Rum',
        'Luqman',
        'As-Sajdah',
        'Al-Ahzab',
        'Al-Saba',
        'Al-Fatir',
        'Ya Sin',
        'As-Saffat',
        'Sad',
        'Az-Zumar',
        'Al-Mu’min',
        'Ha Mim',
        'Ash-Shura',
        'Az-Zukhruf',
        'Ad-Dukhan',
        'Al-Jathiyah',
        'Al-Ahqaf',
        'Muhammad',
        'Al-Fath',
        'Al-Hujurat',
        'Qaf',
        'Ad-Dhariyat',
        'At-Tur',
        'An-Najm',
        'Al-Qamar',
        'Ar-Rahman',
        'Al-Waqi’ah',
        'Al-Hadid',
        'Al-Mujadilah',
        'Al-Hashr',
        'Al-Mumtahanah',
        'As-Saff',
        'Al-Jumu’ah',
        'Al-Munafiqun',
        'At-Taghabun',
        'At-Talaq',
        'At-Tahrim',
        'Al-Mulk',
        'Al-Qalam',
        'Al-Haqqah',
        'Al-Ma’arij',
        'Nuh',
        'Al-Jinn',
        'Al-Muzzammil',
        'Al-Muddaththir',
        'Al-Qiyamah',
        'Al-Insan',
        'Al-Mursalat',
        'An-Naba',
    'An-Nazi at',
        'Abasa',
        'At-Takwir',
        'Al-Infitar',
        'At-Tatfif',
        'Al-Inshiqaq',
        'Al-Buruj',
        'At-Tariq ',
        'Al-Ala',
        'Al-Ghashiyah',
        'Al-Fajr',
        'Al-Balad',
        'Ash-Shams',
        'Al-Lail',
        'Ad-Duha',
        'Al-Inshirah',
        'At-Tin',
        'Al-Alaq',
        'Al-Qadr',
        'Al-Bayyinah',
        'Al-Zilzal',
        'Al-‘Adiyat',
        'Al-Qari’ah',
        'At-Takathur',
        'Al-‘Asr',
        'Al-Humazah',
        'Al-Fil',
        'Al-Quraish',
        'Al-Ma’un',
        'Al-Kauthar',
        'Al-Kafirun',
        'An-Nasr',
        'Al-Lahab',
        'Al-Ikhlas',
        'Al-Falaq',
        'An-Nas',

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
                TextField(
                    controller:  editcontroller,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 30),
                      hintText: "Search Here",
                      suffixIcon: Container(
                          height: 30,
                          width: 20,
                          decoration: BoxDecoration(
                            color:AppColors.Kiconcolor,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          child: Icon(Icons.search,color: AppColors.witheColor,)

                      ),
                      fillColor: AppColors.Ksearchcolor,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 3, color: AppColors.Ksearchcolor),
                        borderRadius: BorderRadius.circular(50.0),


                      ),
                      focusColor: AppColors.Ksearchcolor,
                      focusedBorder:  OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 2, color: AppColors.Ksearchcolor),
                        borderRadius: BorderRadius.circular(30.0),

                      ),

                    ),

                    onChanged: (String value){
                      setState((){

                      });

                    }

                ),
                SizedBox(
                  height: 5.h,

                ),
                Expanded(
                  child: ListView.builder(

                      itemCount: sorah.length,
                      itemBuilder: (context, int index) {
                        if(sorah[index].toLowerCase().contains(editcontroller.text.toLowerCase().toLowerCase()))
                        {return Padding(
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
                                    MaterialPageRoute(builder: (context) => QuranScreen2(surah_No: index+1,)),
                                  );},
                                  child: ListTile(
                                    title: Tstyles(text:sorah[index],Fsize: 18.sp,bold: FontWeight.bold)  ,
                                    subtitle: Tstyles(text: "The Opening",Fsize: 13.sp,),
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
                        }
                        else {return Container();}

                      }),
                ),

              ],
            ),
          ),
        )


    );
  }
}
