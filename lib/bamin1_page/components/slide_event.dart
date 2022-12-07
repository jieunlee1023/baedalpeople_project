import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SlideEvent extends StatelessWidget {
  SlideEvent({Key? key}) : super(key: key);

  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    List<Widget> items = [
      _eventItem("banner1"),
      _eventItem("banner2"),
      _eventItem("banner3"),
      _eventItem("banner4"),
      _eventItem("banner5"),
      _eventItem("banner6"),
    ];

    return CarouselSlider(
      carouselController: _controller,
      items: items,
      options: CarouselOptions(
        autoPlay: true,
        scrollDirection: Axis.horizontal,
        height: MediaQuery.of(context).size.height / 6.53,
        viewportFraction:1,
      ),
    );
  }

  Widget _eventItem(var item) {
    return InkWell(
      onTap: (){
        print("움직이는 배너 눌러짐");
      },
      child: Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/bamin1_page/$item.png",
            fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }
}
