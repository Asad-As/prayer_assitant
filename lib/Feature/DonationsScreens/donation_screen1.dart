import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prayer_assitant/Core/AppColors.dart';
import 'package:prayer_assitant/Core/common_methods.dart';
import 'package:prayer_assitant/Feature/DonationsScreens/donation_screen2.dart';

import '../../Core/common_wedgits.dart';
import '../../Core/imagePath.dart';
import '../OnboardingScreeen/onboarding_contents.dart';

class DonationScreen1 extends StatefulWidget {
  const DonationScreen1({Key? key}) : super(key: key);

  @override
  State<DonationScreen1> createState() => _DonationScreen1State();
}

class _DonationScreen1State extends State<DonationScreen1> {

  Images imageS = Images();


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
                  child: Text('Donation For Mosque',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w700,
                      )),
                ),
                SizedBox(
                  height: 60.h,

                ),

                makeInput(allcontroller: emailcontroller,Htext: 'Enter Mosque Name',
                ),
                makeInput(allcontroller: emailcontroller,Htext: 'Add Donation',
                ),


                SizedBox(height: 10.h),
                CoustomButton(
                    pointToOnPress: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DonationScreen2()),
                  );

                }, buttonTitle: "Proceed"),






              ],
            ),
          ),
        )


    );
  }
}
