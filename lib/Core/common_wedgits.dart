import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoustomButton extends StatelessWidget {
  String buttonTitle;

  final bool loading;
  final VoidCallback pointToOnPress;
  CoustomButton({Key? key, required this.pointToOnPress,
    required this.buttonTitle,
    this.loading= false,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: 250.h,
      child: ElevatedButton(
        onPressed: pointToOnPress,
        child: loading ? CircularProgressIndicator(strokeWidth: 3,color: Colors.white,):
        Text(buttonTitle,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
        style: ElevatedButton.styleFrom(
          primary:Colors.blue,
          ),


      ),
    );
  }
}