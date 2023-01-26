import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prayer_assitant/Core/AppColors.dart';
import 'package:prayer_assitant/Core/AppSizeBox.dart';
import 'package:prayer_assitant/Core/common_methods.dart';
import 'package:prayer_assitant/Feature/HomeScreen/SliderforMonths.dart';
import 'package:prayer_assitant/Feature/HomeScreen/listviewforscreens.dart';

import '../../Core/Exit_dilog.dart';
import '../../Core/imagePath.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Images imageS = Images();

  final edittextcontroller = TextEditingController();

  List monthsName =[
    'Muharram',
    'Safar',
    'Rabi al-Awwal',
    'Rabi al-Thani',
    'Jumada al-Awwal',
    'Jumada al-Thani',
    'Rajab',
    'Shaban',
    'Ramadan',
    'Shawwal',
    'Dhu al-Qadah',
    'Dhu al-Hijjah '
  ];
  List title = [
    "Qibla Direction",
    "Prayer Time",
    "Nearby Mosque",
    "Duas",
    "Ramadan",
    "Quran",
    "Hadees",
    "Hajj-Umrah Guidance",
    "Hajj Guid",
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => showExitPopup(context),
      child: Scaffold(
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
                    child: Center(child: Tstyles(text: "Prayer Assistant",Fsize: 25.0,bold: FontWeight.bold,color: AppColors.witheColor)),
                  ),
                  fixheight15,
                  Text('Islamic Calander ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: AppColors.witheColor),),
                  fixheight15,
                   slider(),
                  fixheight5,
                  ListviewforScreens()
              ],
              ),
            ),
          ),
        )
      ),
    );
  }

}
