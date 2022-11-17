import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:prayer_assitant/Core/AppColors.dart';
import 'package:prayer_assitant/Feature/HomeScreen/CommanCard.dart';
class slider extends StatefulWidget {
  slider({Key? key}) : super(key: key);

  @override
  State<slider> createState() => _sliderState();

}

class _sliderState extends State<slider> {

  int _currentIndex=0;

  List cardList=[

    Item1(),
    Item1(),
    Item1(),
    Item1(),
    /*Item2(),
    Item3(),
    Item4()*/
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            height: 100.0,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: cardList.map((card){
            return Builder(
                builder:(BuildContext context){
                  return Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      child: card,
                    ),
                  );
                }
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: map<Widget>(cardList, (index, url) {
            return Container(
              width: 10.0,
              height: 10.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index ? AppColors.KwitheColor : AppColors.Ksearchcolor,
              ),
            );
          }),
        ),
      ],
    );
  }
}
class Item1 extends StatelessWidget {
  const Item1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          comman_Card(),
          comman_Card(),
          comman_Card()

        ],
      ),
    );
  }
}
