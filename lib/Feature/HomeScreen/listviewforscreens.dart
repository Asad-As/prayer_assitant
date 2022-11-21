import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prayer_assitant/Feature/OnboardingScreeen/onboarding_contents.dart';
class ListviewforScreens extends StatelessWidget {
 ListviewforScreens({Key? key}) : super(key: key);

  List title = [
 "Qibla Direction",
    "Prayer Time",
    "Nearby Mosque",
    "Duas",
    "Ramadan",
    "Quran",
    "Hadees",
    "Donation",
    "Teach Islam",
    "Umrah Guide",
    "Hajj Guid",
  ];
  List imgs= [
    imageS.qiblafinder,
  imageS.prayertime,
  imageS.nearby,
  imageS.duas,
  imageS.ramdan,
  imageS.quraan,
  imageS.hades,
    imageS.donations,
    imageS.teachislam,
    imageS.umrahguid,
    imageS.hajguid,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2200.h,
      child: ListView.builder(
        physics:NeverScrollableScrollPhysics(),
          itemCount: 11,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 190.h,
              width: 1.sw/1.5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              margin: EdgeInsets.only(bottom: 10),
              child: Column(

                children: [
                  Image.asset(imgs[index]),
                  Text(title[index],style: TextStyle(fontSize: 20),)
                ],
              )
            );
          }

          ),
    );
  }
}
