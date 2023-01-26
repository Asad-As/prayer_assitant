import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prayer_assitant/Feature/HomeScreen/homeModel.dart';
class ListviewforScreens extends StatelessWidget {
 ListviewforScreens({Key? key}) : super(key: key);
 final editcontroller = TextEditingController();



 List title = [
   "Qibla Direction",
   "Prayer Time",
   "Nearby Mosque",
   "Duas",
   "Ramadan",
   "Quran",
   "Hadees",
   "Hajj-Umrah Guidance",

 ];


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1635.h,
      child: ListView.builder(
        physics:NeverScrollableScrollPhysics(),
          itemCount:widgetlist.length,
          itemBuilder: (BuildContext context, int index) {

    if(title[index].toLowerCase().contains(editcontroller.text.toLowerCase().toLowerCase()))
    {
            return InkWell(
              onTap: (){ Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => widgetlist[index].ScreenName),
              );},
              child: Container(
                height: 190.h,
                width: 1.sw/1.5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: EdgeInsets.only(bottom: 10),
                child: Column(
                  children: [
                    Image.asset(widgetlist[index].Image),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(widgetlist[index].Title,style: TextStyle(fontSize: 20,),),
                    )
                  ],
                )
              ),
            );
            }
        else {

          return Container();
           }

          }

          ),
    );
  }
}
