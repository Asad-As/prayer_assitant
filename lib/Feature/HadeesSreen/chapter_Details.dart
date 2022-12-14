import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:prayer_assitant/Core/Api_models/Hadess_model.dart';
import 'package:prayer_assitant/Core/AppColors.dart';
import 'package:prayer_assitant/Core/Loading_indicator.dart';
import 'package:prayer_assitant/Core/common_methods.dart';

import '../OnboardingScreeen/onboarding_contents.dart';

class ChapterDetails extends StatefulWidget {
  final String Name;
  final String Link;
  final int  Chap_No;

  ChapterDetails({Key? key,required this.Chap_No, required this.Link, required this.Name})
      : super(key: key);


  @override
  State<ChapterDetails> createState() => _ChapterDetailsState();

}

class _ChapterDetailsState extends State<ChapterDetails> {


  List<Hadess_model> Hadees_List = [];

  Future<List<dynamic>> getHadeesList() async {
    final response = await http.get(Uri.parse(widget.Link));
    var data = jsonDecode(response.body)['hadiths'];

    if (response.statusCode == 200)
    {
      for(Map i in data)
        {
             Hadess_model model = Hadess_model.fromJson(i);
             if ( widget.Chap_No  == model.reference.book  && !( identical(model.text, "") ))
        {
          Hadees_List.add(model);
          print(model.hadithnumber.toString());
        }

        }

      return Hadees_List;
    } else {
      return Hadees_List;
    }
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(widget.Chap_No);
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
                  child: Text(widget.Name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w700,
                      )),
                ),
                SizedBox(
                  height: 15.h,

                ),
                Expanded(
                  flex: 5,
                  child: FutureBuilder(
                      future: getHadeesList(),
                      builder: (context,AsyncSnapshot<List<dynamic>> snapshot)
                   {
                       /*if(!snapshot.hasData)
                        { return LoadingIndicator();  }
                         else*/
                       return ListView.builder(

                        itemCount:Hadees_List.length,
                        itemBuilder: (context, int index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: 12.h),
                            child: Container(
                              
                              width: 350.w,
                              decoration:  BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(5.r)),
                                color: AppColors.witheColor,
                              ),
                              child: Column(

                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [


                                  InkWell(
                                 /*     onTap: (){ Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>QuranScreen2(surah_No: index+1,)),
                                  );},*/
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: ListTile(
                                        title: Tstyles(text:Hadees_List[index].text,Fsize: 18.sp,bold: FontWeight.bold)  ,
                                        trailing:   Container(
                                            width: 60.w,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(5.r)),
                                              color: AppColors.btn2_Color,
                                            ),
                                            child: Center(child: Column(
                                              children: [

                                                Tstyles(text:"N:${Hadees_List[index].reference.hadith.toString()}",Fsize: 18.sp,bold: FontWeight.bold)
                                               , Tstyles(text:"T:${Hadees_List[index].hadithnumber.toString()}",Fsize: 18.sp,bold: FontWeight.bold),
                                               // Tstyles(text:"T:${Hadees_List[index].grades[0].grade.toString()}",Fsize: 18.sp,bold: FontWeight.bold),
                                                //Tstyles(text:"T:${Hadees_List[index].grades.toString()}",Fsize: 18.sp,bold: FontWeight.bold),

                                              ],
                                            ) ))  ,


                                      ),
                                    ),
                                  ),
                                ],
                              ),


                            ),
                          );
                        });
                   }
                  ),
                ),

              ],
            ),
          ),
        )


    );
  }
}
