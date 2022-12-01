import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prayer_assitant/Core/AppColors.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import '../OnboardingScreeen/onboarding_contents.dart';




class Calander extends StatefulWidget {
  int month;
  Calander({Key? key , required this.month}) : super(key: key);
  @override
  State<Calander> createState() => _CalanderState();
}

class _CalanderState extends State<Calander> {
  @override
  Widget build(BuildContext context) {
    print(widget.month);
    return (Scaffold(
        body: IgnorePointer(
          ignoring: true,
          child: Container(
              height: 1.sh,
              width: 1.sw,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image:  AssetImage(imageS.bg),
                    fit: BoxFit.cover,
                  )
              ),
              child: SfDateRangePickerTheme(
                data: SfDateRangePickerThemeData(
                  brightness: Brightness.light,
                  backgroundColor:AppColors.Ksearchcolor,
                  todayHighlightColor: Colors.white70,
                  selectionColor: Colors.white54,
                  selectionTextStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white) ,
                  todayTextStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
                  headerBackgroundColor: Colors.white70,

                ),
                child: Card(
                  margin: const EdgeInsets.fromLTRB(40, 150, 40, 150),
                  child: SfHijriDateRangePicker(
                   // minDate:_minDate,
                  //  maxDate:_maxdate,
                    view: HijriDatePickerView.month,
                    monthViewSettings: HijriDatePickerMonthViewSettings(
                        firstDayOfWeek: 1,
                        dayFormat: 'EEE',
                        viewHeaderHeight: 60,
                        viewHeaderStyle: DateRangePickerViewHeaderStyle(
                            backgroundColor: Colors.white54,
                            textStyle:
                            TextStyle(fontWeight: FontWeight.w400, fontSize: 15,
                                color: Colors.black)


                        )
                    ),
                  ),
                ),
              )
          ),
        )
    )
    );
  }

}

