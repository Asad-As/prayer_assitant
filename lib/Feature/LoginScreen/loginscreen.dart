import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prayer_assitant/Core/AppColors.dart';
import 'package:prayer_assitant/Feature/OnboardingScreeen/onboarding_contents.dart';
import 'package:prayer_assitant/Feature/RegisterScreen/Register_Screen.dart';
import '../../Core/common_methods.dart';
import '../../Core/common_wedgits.dart';
import '../../Core/imagePath.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isobscure=true;

  Images imageS = Images();
  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body: SafeArea(
        child: Expanded(
          child: Container(
           decoration: BoxDecoration(
             image:  DecorationImage(
               image: AssetImage(imageS.bg),
               fit: BoxFit.fill,
             ),
           ),
           child: Column(

             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imageS.Signinpic,height: 250.h,width: 250.h,),
              makeInput(allcontroller: emailcontroller,Htext: 'Email Address',

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
              CoustomButton(pointToOnPress: (){}, buttonTitle: "LOGIN"),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Forgot Password ? ",style: TextStyle(fontSize: 15),),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                      return const RegisterScreen();
                    }));},
                    child: Text("Register",style: TextStyle(
                        fontSize: 13,
                        color: Colors.blue,
                    ),),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 40.h,
                width: 250.h,
                color:AppColors.witheColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Image.asset(imageS.Google,height: 18.h,width: 18.h,),
                    SizedBox(width: 5,),
                    Text("signin with Google",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                  ],
                ),
              )

            ],
            ),
          ),
        ),),
    );
  }
}
