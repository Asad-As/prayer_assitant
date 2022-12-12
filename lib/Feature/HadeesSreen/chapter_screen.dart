import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prayer_assitant/Core/Api_models/Book_open_model.dart';
import 'package:prayer_assitant/Core/AppColors.dart';
import 'package:prayer_assitant/Core/common_methods.dart';
import 'package:http/http.dart' as http;

import '../OnboardingScreeen/onboarding_contents.dart';

class ChapterScreen extends StatefulWidget {

final String Name;
final String Link ;

  ChapterScreen({Key? key, required this.Link,required this.Name}) : super(key: key);

  @override
  State<ChapterScreen> createState() => _ChapterScreenState();
}

class _ChapterScreenState extends State<ChapterScreen> {
  List<Book_open_model> BookList = [];

  Future<List<Book_open_model>> getChapters ()async{
    final response = await http.get(Uri.parse(widget.Link)) ;
    var data = jsonDecode(response.body.toString());
    if(response.statusCode == 200){
      for(Map i in data){
        Book_open_model  open_book = Book_open_model(metadata: i['metadata'], hadiths: i['hadiths']);
        BookList.add(open_book);
      }
      return BookList ;
    }else {
      return BookList ;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Api Course'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                future: getChapters(),
                builder: (context,AsyncSnapshot<List<Book_open_model>> snapshot){
                  return ListView.builder(
                      itemCount: BookList.length ,
                      itemBuilder: (context , index){
                        return ListTile(

                          subtitle: Text(snapshot.data![index].metadata.toString()),
                          //title: Text('Notes id:'+snapshot.data![index].id.toString()),
                        );
                      });
                }),
          ),
        ],
      ),
    );
  }
}
 /* @override
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
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w700,
                      )),
                ),
                SizedBox(
                  height: 15.h,

                ),
                Expanded(
                  flex: 5,
                  child: ListView.builder(

                      itemCount:6,
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
                                  *//*  onTap: (){ Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>QuranScreen2(surah_No: index+1,)),
                                );},*//*
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: ListTile(
                                      title: Tstyles(text:"",Fsize: 18.sp,bold: FontWeight.bold)  ,
                                      leading:   Container(
                                          height: 50.h,
                                          width: 55.w,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(5.r)),
                                            color: AppColors.btn2_Color,
                                          ),
                                          child: Center(child: Tstyles(text:" ${index+1} ",Fsize: 18.sp,bold: FontWeight.bold)))  ,


                                    ),
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

*/