import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prayer_assitant/Core/AppColors.dart';
import 'package:prayer_assitant/Core/common_methods.dart';
import 'package:prayer_assitant/Feature/HadeesSreen/chapter_screen.dart';

import '../OnboardingScreeen/onboarding_contents.dart';

class HadeesScreen extends StatefulWidget {
       HadeesScreen({Key? key}) : super(key: key);

  @override
  State<HadeesScreen> createState() => _HadeesScreenState();

}

class _HadeesScreenState extends State<HadeesScreen> {
  final editcontroller = TextEditingController();
  List<String> Book_names=[
    'abudawud',
    'bukhari',
    'ibnmajah',
    'malik',
    'muslim',
    'nasai',
    'tirmidhi'
  ];
  List<String> Book_links=[
      'Assets/hades/abudawud.json',
      'Assets/hades/bukhari.json',
      'Assets/hades/ibnmajah.json',
      'Assets/hades/malik.json',
      'Assets/hades/muslim.json',
      'Assets/hades/nasai.json',
      'Assets/hades/tirmmidhi.json',

    /*'https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/urd-abudawud.json',
    'https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/urd-bukhari.json',
    "https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/urd-ibnmajah.json",
    "https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/urd-malik.json",
    'https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/urd-muslim.json',
    'https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/urd-nasai.json',
    'https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/urd-tirmidhi.json'*/
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
                child: Text('Hadees',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
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
                flex: 5,
                child: ListView.builder(

                    itemCount:Book_names.length,
                    itemBuilder: (context, int index) {
                      if(Book_names[index].toLowerCase().contains(editcontroller.text.toLowerCase().toLowerCase()))
                      {
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
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) =>ChapterScreen(Name: Book_names[index],Link: Book_links[index],)),
                                    );},
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: ListTile(
                                      title: Tstyles(text:Book_names[index],Fsize:  15.sp,bold: FontWeight.w600)  ,
                                      leading:   Container(
                                          height: 50.h,
                                          width: 55.w,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(5.r)),
                                            color: AppColors.btn2_Color,
                                          ),
                                          child: Center(child: Tstyles(text:" ${index+1} ",Fsize: 15.sp,bold: FontWeight.bold)))  ,


                                    ),
                                  ),
                                ),
                              ],
                            ),


                          ),
                        );
                      } else
                      {
                        return Container();
                      }
                    }),
              ),

            ],
          ),
        ),
      )


    );
  }
}

