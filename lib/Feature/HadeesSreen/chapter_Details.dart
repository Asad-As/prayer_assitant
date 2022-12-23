import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prayer_assitant/Core/Api_models/Hadess_model.dart';
import 'package:prayer_assitant/Core/AppColors.dart';
import 'package:prayer_assitant/Core/Loading_indicator.dart';
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
    final response = await rootBundle.loadString(widget.Link);
    var data = jsonDecode(response)['hadiths'];
    {
      print(widget.Chap_No);

      for (Map i in data) {
        Hadess_model model = Hadess_model.fromJson(i);

        if(model.reference.book == 20)
            print(model.reference.book);

        if (widget.Chap_No == model.reference.book )
          // && !( identical(model.text, "") )
            {
              Hadees_List.add(model);
              }
      }
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
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      )),
                ),
                SizedBox(
                  height: 15.h,

                ),
                Expanded(
                  flex: 3,
                  child: FutureBuilder(
                      future: getHadeesList(),
                      builder: (context,AsyncSnapshot<List<dynamic>> snapshot)
                   {
                       if(Hadees_List.length <= 0)
                        { return LoadingIndicator();  }
                         else
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
                                      padding: const EdgeInsets.only(top: 10,left: 5,right: 5),
                                      child: Center(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                           children: [
                                             Text("حدیث:${Hadees_List[index].reference.hadith.toString()}"),
                                             Padding(padding: EdgeInsets.symmetric(horizontal: 15),child: Text( Hadees_List[index].text ,textAlign: TextAlign.justify,textDirection:TextDirection.rtl,)),
                                             Divider(height: 3,thickness: 2,indent: 8,endIndent: 8,),
                                             Center(
                                               child: Text(" بحواله كتاب:${Hadees_List[index].hadithnumber.toString()}",
                                               ),
                                             )
                                           ],
                                        ),
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
