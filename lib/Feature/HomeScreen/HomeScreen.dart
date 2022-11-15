import 'package:flutter/material.dart';
import 'package:prayer_assitant/Core/AppSizeBox.dart';

import '../../Core/imagePath.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);


  Images imageS = Images();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          fixheight10,
          fixwidth10,
          Image.asset(imageS.splashScreenImage),
          Text('jeewfj,c,hg.v'),
        ],
      ),
    );
  }
}
