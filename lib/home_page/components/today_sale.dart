import 'package:baedalpeople/home_page/components/catagory_title.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TodaySale extends StatelessWidget {
  TodaySale({Key? key}) : super(key: key);

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          Catagory_title(title: "오늘의 할인", logoimg: "today_sale_logo"),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  _todaySaleImage("today_sale1"),
                  _todaySaleImage("today_sale2"),
                  _todaySaleImage("today_sale3"),
                  _todaySaleImage("today_sale4"),
                  _todaySaleImage("today_sale5"),
                  _todaySaleImage("today_sale6"),
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
          borderRadius: BorderRadius.circular(10),
          border:
              Border.all(color: Color.fromRGBO(206, 206, 206, 0.5), width: 0.8),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            "assets/home_page/$item.png",
            width: 200,
          ),
        ),
      ),
    );
  }

  Widget _lastBox() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        width: 115,
        height: 115,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border:
              Border.all(color: Color.fromRGBO(206, 206, 206, 0.5), width: 0.8),
        ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("더 많은\n할인혜택\n보기",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),),
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
