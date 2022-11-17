import 'package:flutter/material.dart';
import 'package:prayer_assitant/Feature/OnboardingScreeen/onboarding_contents.dart';
class comman_Card extends StatefulWidget {
  const comman_Card({Key? key}) : super(key: key);

  @override
  State<comman_Card> createState() => _comman_CardState();
}

class _comman_CardState extends State<comman_Card> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 100,
      child: Stack(
        children: [
          Image.asset(imageS.duas,fit: BoxFit.cover,),
          Text("months"),
        ],
      ),
    );
  }
}
