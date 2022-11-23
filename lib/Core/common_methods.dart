import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

 String hint = "hint";
final _formkey =GlobalKey<FormState>();
final emailcontroller = TextEditingController();
final passwordcontroller = TextEditingController();
final conformPW = TextEditingController();
Widget makeInput({obsureText = false,hint,allcontroller,Htext,txt2, Iconss,iconss}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [



         Padding(
          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
          child: SingleChildScrollView(
            child: TextFormField(
              controller: allcontroller,
              obscureText: obsureText,
              decoration:  InputDecoration(

                hintText: Htext,
                filled: true,
                suffixIcon: Iconss,
                prefixIcon: iconss,


              ),



              // validator: (value) {
              //   if (value!.isEmpty) {
              //     return text;
              //   }
              //
              //  else if( passwordcontroller.value.text.compareTo(conformPW.value.text)==1){
              //     return txt2;
              //     print("jgfgtdcthfggggg------------");
              //   }
              //   return null;
              // },




        ),
          ),
      ),
      SizedBox(height: 20,)

    ],
  );
}


Widget Tstyles({text,Fsize,bold,color,Textside}){
  return
    Text(text,style: TextStyle(fontSize: Fsize,fontWeight: bold,color: color,),textAlign: Textside,);

}