import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prayer_assitant/Core/AppColors.dart';
import 'package:prayer_assitant/Feature/HomeScreen/Calender.dart';
import 'package:prayer_assitant/Feature/OnboardingScreeen/onboarding_contents.dart';
class slider extends StatefulWidget {
  slider({Key? key}) : super(key: key);

  @override
  State<slider> createState() => _sliderState();



}

class _sliderState extends State<slider> {
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
List monthimg = [
  imageS.m1,
  imageS.m2,
  imageS.m3,
  imageS.m4,
  imageS.m5,
  imageS.m6,
  imageS.m7,
  imageS.m8,
  imageS.m9,
  imageS.m10,
  imageS.m11,
  imageS.m12
];






  final PageController _pageViewController = PageController(initialPage: 3); // set the initial page you want to show

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageViewController.dispose();  // dispose the PageController
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100,
      width: 1.sh,
      child: PageView.builder(
        itemCount: 12,
        controller: PageController(
          initialPage: 3,
          viewportFraction: 0.5,
        ),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap:  (){ Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Calander(month: index+1,)),
            );},
            child: Container(
              padding: EdgeInsets.only(right: 5),
              child: Stack(children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(monthimg[index],height: 100 ,width: 150,fit: BoxFit.fill,)),
                Positioned(
                  left: 5.w,
                  bottom: 5.h,
                  child: Center(
                    child: Container( height: 20,width: 137.w,
                         decoration: BoxDecoration(color: Colors.white70,
                             borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Text(monthsName[index],textAlign: TextAlign.center,),
                    ),
                  ),
                )

              ],),),
          );
        },

      ),
    );
  }
}

