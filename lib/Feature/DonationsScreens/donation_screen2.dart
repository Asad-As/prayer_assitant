import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prayer_assitant/Core/AppColors.dart';
import 'package:prayer_assitant/Core/common_methods.dart';

import '../../Core/common_wedgits.dart';
import '../../Core/imagePath.dart';
import '../OnboardingScreeen/onboarding_contents.dart';
import 'easypaisa_screen.dart';
import 'jazzchash_screen.dart';

class DonationScreen2 extends StatefulWidget {
  const DonationScreen2({Key? key}) : super(key: key);

  @override
  State<DonationScreen2> createState() => _DonationScreen2State();
}

class _DonationScreen2State extends State<DonationScreen2> {

  Images imageS = Images();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
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
                  child: Text('Donation For Mosque',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w700,
                      )),
                ),
                SizedBox(
                  height: 40.h,

                ),
                SizedBox(
                  height: 280.h,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Container(
                        decoration:  BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5.r)),

                            color: Colors.white70



                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 50.h,
                              width: double.infinity,
                              child:   Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                  children: [
                                    Image.asset(imageS.simcard,height: 32.h,width: 43.w,),
                                    Image.asset(imageS.visalogo,height: 34.h,width: 137.w,),



                                  ],
                                ),
                              )
                              ,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: TextFormField(

                                obscureText: true,
                                keyboardType: TextInputType.number,
                                decoration:  InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(4.r)),
                                    borderSide: BorderSide(color: Colors.grey, width: 1.5),
                                  ),

                                  label: Tstyles(text: "Enter Card Number",Fsize: 14.sp),
                                  hintText: "**** **** **** ****",
                                  filled: true,



                                ),






                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: TextFormField(
                                decoration:  InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.r)),
                                    borderSide: BorderSide(color: Colors.grey, width: 4.0.w),
                                  ),

                                  label: Tstyles(text: "Expiry Date",Fsize: 14.sp),
                                  hintText: "DD/MM/YY",
                                  filled: true,



                                ),
                              ),
                            ),

                          ],
                        )
                    ),
                  ),
                ),

                SizedBox(height: 10.h),
                CoustomButton(pointToOnPress: (){}, buttonTitle: "Donate"),
                SizedBox(height: 20.h),

                Container(
                  height: 45.h,
                  width: double.infinity,
                  color:AppColors.Lightblack,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Image.asset(imageS.easypaisa,height: 30.h,width: 30.h,),
                      SizedBox(width: 25.w,),
                      InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>EasypaisaScreen() ),
                            );
                          },
                          child: Text("Pay via EasyPaisa",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: AppColors.witheColor),)),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  height: 45.h,
                  width: double.infinity,
                  color:AppColors.Lightblack,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Image.asset(imageS.jazzcash,height: 25.h,width: 40.h,),
                      SizedBox(width: 25.w,),
                      InkWell(onTap:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => JazzchashScreen()),
                        );
                      },
                        child: Text("Pay via Jazz Cash",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: AppColors.witheColor),)),
                    ],
                  ),
                ),



              ],
            ),
          ),
        )


    );
  }
}
