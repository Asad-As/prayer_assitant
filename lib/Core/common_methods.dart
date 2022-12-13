import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

 String hint = "hint";
final _formkey =GlobalKey<FormState>();
final FirstnameCntrl = TextEditingController();
final LastnameCnrtl = TextEditingController();
final emailcontroller = TextEditingController();
final phoneNumbercontroller = TextEditingController();

final _passwordcontroller = TextEditingController();
final conformPW = TextEditingController();
Widget makeInput({obsureText = false,hint,allcontroller,Htext,txt2, Iconss,iconss, KeyboardType,text}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
         Padding(
          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
          child: SingleChildScrollView(
            child: TextFormField(
              controller: allcontroller,
              obscureText: obsureText,
              keyboardType: KeyboardType,
              decoration:  InputDecoration(

                hintText: Htext,
                filled: true,
                suffixIcon: Iconss,
                prefixIcon: iconss,


              ),



              validator: (value) {
                if (value!.isEmpty) {
                  return text;
                }
                //value != passwordcontroller
                //value != passwordcontroller
                //passwordcontroller.text != conformPW.text
                //_passwordcontroller.compareTo(conformPW) == 0;
                //_passwordcontroller.text.toString() != conformPW.text.toString()

                if(_passwordcontroller.text != conformPW.text){

                  return txt2;

                }
                return null;
              },




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
TextStyle fixstyle = TextStyle(

);
void AllTextClear(){
  emailcontroller.clear();
  _passwordcontroller.clear();
  conformPW.clear();
  FirstnameCntrl.clear();
  LastnameCnrtl.clear();
  phoneNumbercontroller.clear();
}
