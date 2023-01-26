import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prayer_assitant/Feature/UmrahGuideScreen/umrahModel.dart';
import 'package:prayer_assitant/Feature/UmrahGuideScreen/umrahguide_screen.dart';

import '../../Core/AppColors.dart';
import '../../Core/common_methods.dart';
import '../OnboardingScreeen/onboarding_contents.dart';
class Guidescreen extends StatefulWidget {
  const Guidescreen({Key? key}) : super(key: key);

  @override
  State<Guidescreen> createState() => _GuidescreenState();
}

class _GuidescreenState extends State<Guidescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Hajj-umrah"),
     backgroundColor: AppColors.Ksearchcolor,
      ),

      body:
      SafeArea(
        child: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
          image:  AssetImage(imageS.bg),
            fit: BoxFit.cover,
    )
    ),

          child: ListView.builder(
              itemCount: Guidetlist.length,
              itemBuilder: (BuildContext context, int index) {

                return
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                    height: 65.h,
                width: 350.w,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.r)),
                color: AppColors.witheColor,),
                child: InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => UmrahGuideScreen(path: Guidetlist[index].url )),
                        );
                      },
                      child:  ListTile(
                        title:  Tstyles(text:"guidance",Fsize: 18.sp,bold: FontWeight.bold,),
                        leading:   Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Container(
                              height: 64.h,
                              width: 50.w,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(5.r)),
                                color: AppColors.btn2_Color,
                              ),
                              child: Center(child: Tstyles(text:" ${index+1}",Fsize: 16.sp,bold: FontWeight.bold,color: AppColors.witheColor,Textside: TextAlign.center))),
                        )  ,
                      ),
                ),
                    ),
                  );
              }

          ),
        ),
      ),
    );
  }
}

