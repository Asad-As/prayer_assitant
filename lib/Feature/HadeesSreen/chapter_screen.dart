import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:prayer_assitant/Core/AppColors.dart';
import 'package:prayer_assitant/Core/common_methods.dart';
import 'package:prayer_assitant/Feature/HadeesSreen/chapter_Details.dart';

import '../../Core/Loading_indicator.dart';
import '../OnboardingScreeen/onboarding_contents.dart';

class ChapterScreen extends StatefulWidget {
  final String Name;
  final String Link;

  ChapterScreen({Key? key, required this.Link, required this.Name})
      : super(key: key);

  @override
  State<ChapterScreen> createState() => _ChapterScreenState();
}

class _ChapterScreenState extends State<ChapterScreen> {
  final editcontroller = TextEditingController();


  List<dynamic> BookList = [];

  Future<List<dynamic>> getChapters() async {
    final response = await rootBundle.loadString(widget.Link);
    print(response);
    var data = jsonDecode(response)['metadata']['sections'];
    {
      int a = 0;
      while (true) {
           // if(!(identical(data[a.toString()], "")))
            BookList.add(data[a.toString()]);

             a++;

        // BookList.add(open_book);

        if (data[a.toString()] == "" ||
            data[a.toString()] == null ||
            data[a.toString()] == false ||
            data[a.toString()] == 0) {
          a = 0;
          break;
        }
      }

      return BookList;
    }/* else {
      return BookList;
    }*/
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
                  child: FutureBuilder(
                      future: getChapters(),
                      builder: (context,AsyncSnapshot<List<dynamic>> snapshot)
                   {
                     if(BookList.length <= 0)

                     {
                       return LoadingIndicator();  }

                     return ListView.builder(

                         itemCount:BookList.length,
                         itemBuilder: (context, int index) {
                   if(BookList[index].toLowerCase().contains(editcontroller.text.toLowerCase().toLowerCase()))
                   {
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
                               onTap: (){ Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) =>ChapterDetails(Chap_No: index, Link: widget.Link, Name: BookList[index])),
                               );},
                               child: Padding(

                                 padding: const EdgeInsets.only(top: 5,bottom: 5),
                                 child: ListTile(
                                   title: Tstyles(text:BookList[index],Fsize: 15.sp,bold: FontWeight.w500)  ,
                                   leading:   Container(
                                       height: 50.h,
                                       width: 55.w,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.all(Radius.circular(5.r)),
                                         color: AppColors.btn2_Color,
                                       ),
                                       child: Center(child: Tstyles(text:" ${index+1} ",Fsize: 18.sp,bold: FontWeight.w500)))  ,


                                 ),
                               ),
                             ),
                           ],
                         ),


                       ),
                     );
                   }

                   else {return Container();}
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
