import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prayer_assitant/Feature/HomeScreen/HomeScreen.dart';

import '../../Core/common_methods.dart';
import '../../Core/common_wedgits.dart';
import '../../Core/imagePath.dart';
import '../../utils/Uitility.dart';
import '../LoginScreen/loginscreen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _editingController= TextEditingController();
  bool _isobscure=true;
  bool _isobscure2=true;
  bool loading= false;
  final _formkey =GlobalKey<FormState>();
  final FirstnameCntrl = TextEditingController();
  final LastnameCnrtl = TextEditingController();
  final emailcontroller = TextEditingController();
  final phoneNumbercontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final conformPW = TextEditingController();


  FirebaseAuth _auth= FirebaseAuth.instance;





  Images imageS = Images();
  @override
  Widget build(BuildContext context) {
    return Scaffold(





      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image:  DecorationImage(
              image: AssetImage(imageS.bg),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(imageS.Signuppic,height: 200.h,width: 250.h,),
                    SizedBox(height: 05,),
                    const Text("Register",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),




                    SizedBox(height: 20),
                ],),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Form(
                    key: _formkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        makeInput(allcontroller: FirstnameCntrl,Htext: 'First Name',text: 'Enter First Name',
                        ),
                        makeInput(allcontroller: LastnameCnrtl,Htext: 'Last Name',text: 'Enter Last Name'
                        ),
                        makeInput(allcontroller: emailcontroller,Htext: 'Email Address',KeyboardType: TextInputType.emailAddress,text: 'Enter Email Address'
                        ),
                        makeInput(allcontroller: phoneNumbercontroller,Htext: 'Phone Number',KeyboardType: TextInputType.phone,text: 'Enter Phone Number'

                        ),
                        makeInput(obsureText: _isobscure,allcontroller: passwordcontroller,Htext: ' Password',text: 'Enter Password',
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
                        makeInput(Htext:"Confirm Password",obsureText: _isobscure2,allcontroller: conformPW,text: 'Enter Confirm password',txt2: 'No match password',

                            Iconss:  IconButton(
                              onPressed: (){
                                setState(() {
                                  _isobscure2 = !_isobscure2;
                                });

                              },
                              icon: Icon(
                                  _isobscure2
                                      ?  Icons.visibility_off
                                      : Icons.visibility

                              ),)

                        ),
                        SizedBox(height: 15),
                        CoustomButton(
                            loading: loading,

                            pointToOnPress: () {
                              print('gcdvcdjgcbh-------');
                              if(_formkey.currentState!.validate()){
                                setState(() {
                                  loading=true;


                                });
                                AllTextClear();

                                _auth.createUserWithEmailAndPassword(email: emailcontroller.text.toString(),
                                    password: passwordcontroller.text.toString()).
                                then((value){
                                  setState(() {
                                    print('cccccc---------------');
                                    loading=false;

                                    AllTextClear();
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => LoginScreen()),


                                    );
                                    print(passwordcontroller.text.toString());
                                    print(conformPW.text.toString());





                                  });
                                }).onError((error, stackTrace){



                                   Utility().toastmessage(error.toString());
                                  setState(() {
                                    loading=false;
                                  });
                                });
                              }


                            },

                            buttonTitle: "REGISTER"),
                        SizedBox(height: 10.h,),




                      ],
                    ),
                  ),
                ),
              ),
          ],),
        ),
      ),
    );
  }
}
