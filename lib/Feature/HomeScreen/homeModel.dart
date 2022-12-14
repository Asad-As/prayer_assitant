

import 'package:flutter/material.dart';
import 'package:prayer_assitant/Feature/DonationsScreens/donation_screen1.dart';
import 'package:prayer_assitant/Feature/DonationsScreens/donation_screen2.dart';
import 'package:prayer_assitant/Feature/DuasScreen/DuaScreen.dart';
import 'package:prayer_assitant/Feature/HadeesSreen/hadees_screen.dart';
import 'package:prayer_assitant/Feature/HajjGuideScreen/hajjguide_screen.dart';
import 'package:prayer_assitant/Feature/NearByMosque.dart';
import 'package:prayer_assitant/Feature/PrayertimeScreen/prayertime_screen.dart';
import 'package:prayer_assitant/Feature/QiblaDirection/Qibla_campas.dart';
import 'package:prayer_assitant/Feature/QuranScreens/Quran_screen1.dart';
import 'package:prayer_assitant/Feature/RamadanScreen/ramadan_screen.dart';
import '../OnboardingScreeen/onboarding_contents.dart';
import '../UmrahGuideScreen/umrahguide_screen.dart';
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
List<Widget> screenlist = [
  // just route from here by placing screeen

  //QiblaScreen1(),
  QiblahCompass(),
  PrayertimeScreen(), PrayertimeScreen(),
  DuasScreen(),
  RamadanScreen(),
  QuranScreen1(),
  HadeesScreen(),
  DonationScreen1(),
  DonationScreen2(), // on place of teach of islam,
  UmrahGuideScreen(),
  HajjGuideScreen(),



];

class HomeModel{


  HomeModel({required this.Title,required this.Image,required this.ScreenName});

  String Title;
  String Image;
  Widget ScreenName;

}


List<HomeModel> widgetlist =[

  HomeModel(Title: title[0], Image: imgs[0], ScreenName:screenlist[0] ),
  HomeModel(Title: title[1], Image: imgs[1], ScreenName:screenlist[1] ),
  HomeModel(Title: title[2], Image: imgs[2], ScreenName:screenlist[2] ),
  HomeModel(Title: title[3], Image: imgs[3], ScreenName:screenlist[3] ),
  HomeModel(Title: title[4], Image: imgs[4], ScreenName:screenlist[4] ),
  HomeModel(Title: title[5], Image: imgs[5], ScreenName:screenlist[5] ),
  HomeModel(Title: title[6], Image: imgs[6], ScreenName:screenlist[6] ),
  HomeModel(Title: title[7], Image: imgs[7], ScreenName:screenlist[7] ),
  HomeModel(Title: title[8], Image: imgs[8], ScreenName:screenlist[8] ),
  HomeModel(Title: title[9], Image: imgs[9], ScreenName:screenlist[9] ),
  HomeModel(Title: title[10], Image: imgs[10], ScreenName:screenlist[10] ),

];

