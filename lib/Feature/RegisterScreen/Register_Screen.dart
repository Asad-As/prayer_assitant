import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Core/common_methods.dart';
import '../../Core/common_wedgits.dart';
import '../../Core/imagePath.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isobscure=true;

  Images imageS = Images();
  @override
  Widget build(BuildContext context) {
    return Scaffold(




      body: SingleChildScrollView(
        child: Container(

          decoration: BoxDecoration(
            image:  DecorationImage(
              image: AssetImage(imageS.bg),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imageS.Signuppic,height: 200.h,width: 250.h,),
              SizedBox(height: 05,),
              Text("signup / Register",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              SizedBox(height: 20),
              makeInput(allcontroller: emailcontroller,Htext: 'First Name',
              ),
              makeInput(allcontroller: emailcontroller,Htext: 'Last Name',
              ),
              makeInput(allcontroller: emailcontroller,Htext: 'Email Address',
              ),
              makeInput(allcontroller: emailcontroller,Htext: 'Phone Number',

              ),
              makeInput(obsureText: _isobscure,allcontroller: passwordcontroller,Htext: ' Password',
                Iconss:  IconButton(
                  onPressed: (){
                    setState(() {
                      _isobscure = !_isobscure;
                    });

                  },
                  icon: Icon(
                      _isobscure
                          ?  Icons.visibility_off
                          : Icons.visibility

                  ),),
              ),
              makeInput(obsureText: _isobscure,allcontroller: passwordcontroller,Htext: 'Confirm Password',
                Iconss:  IconButton(
                  onPressed: (){
                    setState(() {
                      _isobscure = !_isobscure;
                    });

                  },
                  icon: Icon(
                      _isobscure
                          ?  Icons.visibility_off
                          : Icons.visibility

                  ),),
              ),
              SizedBox(height: 15),
              CoustomButton(pointToOnPress: (){}, buttonTitle: "REGISTER"),


            ],
          ),
        ),
      ),
    );
  }
}