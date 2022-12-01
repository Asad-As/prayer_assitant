import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:prayer_assitant/Core/AppColors.dart';
import 'package:prayer_assitant/Core/common_methods.dart';
import '../OnboardingScreeen/onboarding_contents.dart';
import 'package:adhan/adhan.dart';
import 'package:intl/intl.dart';
Position? position;

class PrayertimeScreen extends StatefulWidget {
   PrayertimeScreen({Key? key}) : super(key: key);

  @override
  State<PrayertimeScreen> createState() => _PrayertimeScreenState();
}

class _PrayertimeScreenState extends State<PrayertimeScreen> {

  List prayerstime =[
       'Fajr',
       'Sunrise',
       'Dhuhr',
       'Asr',
       'Maghrib',
       'Isha',

       ];
  List timing =[];
  bool hasPermission = false;

  Future getPermission() async {
    if (await Permission.location.serviceStatus.isEnabled) {
      var status = await Permission.location.status;
      if (status.isGranted) {
        hasPermission = true;
      } else {
        Permission.location.request().then((value) {
          setState(() {
            hasPermission = (value == PermissionStatus.granted);
          });
        });
      }
    }
  }
  @override
  Widget build(BuildContext context)
  {
    return FutureBuilder(
        future: getPermission().then((value) =>  Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)) ,
        builder:(context, AsyncSnapshot<dynamic> snapshot)
    {
      if (hasPermission == true)
      { if(!snapshot.hasData)
          {
         return Scaffold(
           body: Container(
             height: 1.sh,
             width: 1.sw,
             decoration: BoxDecoration(
                 image: DecorationImage(
                   image:  AssetImage(imageS.bg),
                   fit: BoxFit.cover,
                 )
             ),
             child: Center(
               child: Container(
                   height: 100,
                   width: 100,
                   child: CircularProgressIndicator()),
             ),
           ),
         );
        }
      else
         {
        position=snapshot.data;
        final myCoordinates = Coordinates(position?.latitude,position?.longitude);
        final params = CalculationMethod.karachi.getParameters();
        params.madhab = Madhab.hanafi;
        final prayerTimes = PrayerTimes.today(myCoordinates, params);
        timing.add(DateFormat.jm().format(prayerTimes.fajr));
        timing.add(DateFormat.jm().format(prayerTimes.sunrise));
        timing.add(DateFormat.jm().format(prayerTimes.dhuhr));
        timing.add(DateFormat.jm().format(prayerTimes.asr));
        timing.add(DateFormat.jm().format(prayerTimes.maghrib));
        timing.add(DateFormat.jm().format(prayerTimes.isha));

        return   Scaffold(

            body:
            SafeArea(
              child:  Container(
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
                      child: Text('Prayer Time',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w700,
                          )),
                    ),
                    SizedBox(
                      height: 30.h,

                    ),
                    Expanded(
                      flex: 5,
                      child: ListView.builder(
                          itemCount: prayerstime.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(vertical: 12.h),
                              child: Container(

                                height: 65.h,
                                width: 350.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(5.r)),
                                  color: AppColors.witheColor,


                                ),
                                child: Column(

                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListTile(

                                      title:
                                      //Text('Betabyte Tec',style: TextStyle(fontSize: 18),),

                                      Tstyles(text:prayerstime[index],Fsize: 18.sp,bold: FontWeight.bold)  ,


                                      trailing: SizedBox(

                                        width: 115.w,

                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Icon(Icons.chevron_left_rounded,size: 18,),
                                              Tstyles(text: timing[index],Fsize: 18.sp,),

                                              // Text('10:${(index+20).toString()} pm'),
                                              const Icon(Icons.chevron_right_rounded,size: 18,),
                                            ],
                                          ),
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

      }   }
    else {
        return Scaffold(
          body: Container(
            height: 1.sh,
            width: 1.sw,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image:  AssetImage(imageS.bg),
                  fit: BoxFit.cover,
                )
            ),
            child: Center(
              child: Container(

                  child: Text(" Please wait \n Permision is not Granted",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
            ),
          ),
        );
      }
    });
      

  }

}
