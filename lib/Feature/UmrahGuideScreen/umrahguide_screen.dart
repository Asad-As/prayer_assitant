
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../OnboardingScreeen/onboarding_contents.dart';


/// Represents Homepage for Navigation
class UmrahGuideScreen extends StatefulWidget {
  String path;
  UmrahGuideScreen({required this.path});
  @override
  _UmrahGuideScreen createState() => _UmrahGuideScreen();
}

class _UmrahGuideScreen extends State<UmrahGuideScreen> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
              children: [SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: Text('Hajj-Umrah guides',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      )),
                ),
                SizedBox(
                  height: 15.h,

                ),
                Expanded(
                  child: SfPdfViewer.asset(widget.path,
                    key: _pdfViewerKey,
                  ) ,
                ),

              ],
            ),
          ),
        )


    );
  }
}