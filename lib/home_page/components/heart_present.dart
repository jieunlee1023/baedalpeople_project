import 'package:baedalpeople/home_page/components/catagory_title.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeartPresent extends StatelessWidget {
  HeartPresent({Key? key}) : super(key: key);

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          Catagory_title(title: "마음을 선물해보세요", logoimg: "heart_present_logo"),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  _todaySaleImage("heart_present_1"),
                  _todaySaleImage("heart_present_2"),
                  _todaySaleImage("heart_present_3"),
                  _todaySaleImage("heart_present_4"),
                  _todaySaleImage("heart_present_5"),
                  _lastBox(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _todaySaleImage(var item) {
    return Padding(
      padding: const EdgeInsets.only(right: 5, left: 5, bottom: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border:
          Border.all(color: Color.fromRGBO(206, 206, 206, 0.5), width: 0.8),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            "assets/home_page/$item.png",
            width: 120,
          ),
        ),
      ),
    );
  }

  Widget _lastBox() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        width: 120,
        height: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border:
          Border.all(color: Color.fromRGBO(206, 206, 206, 0.5), width: 0.8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("더 많은\n선물카드\n보기",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(FontAwesomeIcons.arrowRight, size: 18),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
