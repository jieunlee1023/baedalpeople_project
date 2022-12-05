import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SlideEvent extends StatelessWidget {
  SlideEvent({Key? key}) : super(key: key);

  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    List<Widget> items = [
      _eventItem("main_banner1"),
      _eventItem("main_banner2"),
      _eventItem("main_banner3"),
    ];

    return CarouselSlider(
      carouselController: _controller,
      items: items,
      options: CarouselOptions(
        autoPlay: true,
        scrollDirection: Axis.horizontal,
        height: MediaQuery.of(context).size.height / 5,
        viewportFraction:1,
      ),
    );
  }

  Widget _eventItem(var item) {
    return InkWell(
      onTap: (){
        print("움직이는 배너 눌러짐");
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 20),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/home_page/$item.png",
              fit: BoxFit.cover),

            ],
          ),
        ),
      ),
    );
  }
}
