


import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';



class Utility{

  void toastmessage(String message)
  {

       Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey,
        textColor: Colors.black,
        fontSize: 16.0
    );
  }
}

