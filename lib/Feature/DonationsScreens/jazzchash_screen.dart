import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Core/common_methods.dart';
import '../../Core/common_wedgits.dart';
import '../../Core/imagePath.dart';
import '../HomeScreen/HomeScreen.dart';

class JazzchashScreen extends StatefulWidget {
  const JazzchashScreen({Key? key}) : super(key: key);

  @override
  State<JazzchashScreen> createState() => _JazzchashScreenState();
}

class _JazzchashScreenState extends State<JazzchashScreen> {
  bool loading= false;
  final _formkey =GlobalKey<FormState>();
  final FirstName = TextEditingController();
  final Amount = TextEditingController();
  final CellNomber = TextEditingController();
  final CNICno = TextEditingController();


  void DonationTextClear(){
    FirstName.clear();
    Amount.clear();
    CellNomber.clear();
    CNICno.clear();

  }


  bool _isobscure=true;

  Images imageS = Images();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(




        body: SingleChildScrollView(
          child: Container(
              height: 1.sh,

            decoration: BoxDecoration(
              image:  DecorationImage(
                image: AssetImage(imageS.bg),
                fit: BoxFit.cover,
              ),
            ),
            child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text('Jazz Cash Top Up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w700,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,

                  ),
                  Image.asset(imageS.jazzcash,height: 96.h,width: 190.h,),

                  SizedBox(height: 50.h),
                  makeInput(allcontroller: FirstName,Htext: 'Enter Name',text: 'Enter Name',
                  ),
                  makeInput(allcontroller: CellNomber,Htext: 'Enter Phone Number',KeyboardType: TextInputType.phone,text: 'Enter Phone Number',
                  ),
                  makeInput(allcontroller: Amount,Htext: 'Enter Amount',KeyboardType: TextInputType.number,text: 'Enter Amount',
                  ),
                  makeInput(allcontroller: CNICno,Htext: 'Please Enter Last 6 Digits of CNIC',KeyboardType: TextInputType.number,text: 'Enter CNIC No',

                  ),

                  SizedBox(height: 30),
                  CoustomButton(pointToOnPress: (){



                    if(_formkey.currentState!.validate()){
                      setState(() {
                        loading=true;
                      });
                    }
                    else{

                      print("------------>>>work>>------------");
                      DonationTextClear();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),

                      );
                    }




                  }, buttonTitle: "Proceed"),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
