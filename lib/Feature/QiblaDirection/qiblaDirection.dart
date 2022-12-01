import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:prayer_assitant/Feature/HomeScreen/HomeScreen.dart';

import '../OnboardingScreeen/onboarding_contents.dart';

class QiblaScreen1 extends StatefulWidget {
  const QiblaScreen1({Key? key}) : super(key: key);

  @override
  State<QiblaScreen1> createState() => _QiblaScreen1State();
}

class _QiblaScreen1State extends State<QiblaScreen1> {

  bool hasPermission = false;
  final _deviceSupport = FlutterQiblah.androidDeviceSensorSupport();


  Future getPermission() async {
    if (await Permission.location.serviceStatus.isEnabled) {
      var status = await Permission.location.status;
      if (status.isGranted) {
        hasPermission = true;
      } else {
        Permission.location.request().then((value) {
          setState(() {
            hasPermission = (value == PermissionStatus.granted);
          });
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {

    return  FutureBuilder(
      future: getPermission(),
      //future: _deviceSupport,
      builder: (context, snapshot) {
        if (hasPermission) {
          return const QiblahScreen();
        } else {
          return  Scaffold(
            body: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          imageS.bg
                      ),
                      fit: BoxFit.cover
                  )
              ),
              child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("not supported please go back"),
                  ElevatedButton(onPressed: (){
                    _animationController?.dispose();
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) =>  HomeScreen()),
                    );},
                      child: Text("back to home "), ),
                ],
              )),
            )
          );
        }
      },

    );
  }
}

class QiblahScreen extends StatefulWidget {
  const QiblahScreen({super.key});

  @override
  State<QiblahScreen> createState() => _QiblahScreenState();
}

Animation<double>? animation;
AnimationController? _animationController;
double begin = 0.0;

class _QiblahScreenState extends State<QiblahScreen> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    _animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 500));
    animation = Tween(begin: 0.0, end: 0.0).animate(_animationController!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      imageS.bg
                  ),
                  fit: BoxFit.cover
              )
          ),
          child:StreamBuilder(
            stream: FlutterQiblah.qiblahStream,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Container(alignment: Alignment.center, child: const CircularProgressIndicator(color: Colors.white,));
              }

              final qiblahDirection = snapshot.data;
              animation = Tween(begin: begin, end: (qiblahDirection!.qiblah * (pi / 180) * -1)).animate(_animationController!);
              begin = (qiblahDirection.qiblah * (pi / 180) * -1);
              _animationController!.forward(from: 0);

              return Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${qiblahDirection.direction.toInt()}°",
                        style: const TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                          height: 300,
                          child: AnimatedBuilder(
                            animation: animation!,
                            builder: (context, child) => Transform.rotate(
                                angle: animation!.value,
                                child: Image.asset(imageS.qibla)),
                          ))
                    ]),
              );
            },
          ),
        ),
      ),
    );
  }
}