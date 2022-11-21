import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prayer_assitant/Core/AppColors.dart';
import 'package:prayer_assitant/Core/AppSizeBox.dart';
import 'package:prayer_assitant/Feature/HomeScreen/SliderforMonths.dart';
import 'package:prayer_assitant/Feature/HomeScreen/listviewforscreens.dart';

import '../../Core/imagePath.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Images imageS = Images();

  TextEditingController _editingController= TextEditingController();
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container (
          width: 1.sw,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  imageS.bg
            ),
                fit: BoxFit.cover
            )
          ),
          child: Padding(
            padding:EdgeInsets.fromLTRB(20.w, 40.h, 20.w, 0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 43.h,
                  width: 1.sh/2,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 30),
                      label: Text('Search here '),
                      suffixIcon: Container(
                          height: 30,
                          width: 20,
                          decoration: BoxDecoration(
                        color:AppColors.Kiconcolor,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                          child: Icon(Icons.search)),
                      fillColor: AppColors.Ksearchcolor,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 2, color: AppColors.Ksearchcolor),
                        borderRadius: BorderRadius.circular(30.0),

                      ),
                      focusColor: AppColors.Ksearchcolor,
                      focusedBorder:  OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 2, color: AppColors.Ksearchcolor),
                        borderRadius: BorderRadius.circular(30.0),

                      ),

                    ),
                  ),
                ),
                fixheight15,
                Text('Islamic Calander ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: AppColors.KwitheColor),),
                fixheight15,
                 slider(),
                fixheight15,
                ListviewforScreens()
            ],
            ),
          ),
        ),
      )
    );
  }

}
