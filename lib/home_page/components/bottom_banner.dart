import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomBanner extends StatelessWidget {
  BottomBanner({Key? key}) : super(key: key);

  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    List<Widget> items = [
      _eventItem("bottom1"),
      _eventItem("bottom2"),
    ];

    return CarouselSlider(
      carouselController: _controller,
      items: items,
      options: CarouselOptions(
        autoPlay: true,
        scrollDirection: Axis.horizontal,
        viewportFraction:1,
        height: 82,
      ),
    );
  }

  Widget _eventItem(var item) {
    return InkWell(
      onTap: (){
        print("하단 움직이는 배너 눌러짐");
      },
      child: Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/home_page/$item.png",
                fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }
}
