import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SlideTab extends StatelessWidget {
  SlideTab({Key? key}) : super(key: key);

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    List<Widget> items = [
      _tabItem('집밥'),
      _tabItem('축구엔 치킨'),
      _tabItem('혼밥도 맛있게'),
      _tabItem('찜 많은 가게'),
      _tabItem('국물의 계절'),
      _tabItem('재주문 많아요'),
      _tabItem('브런치 타임'),
      _tabItem('쿠폰 받기'),
      _tabItem('추천 더 보기'),
    ];

    return CarouselSlider(
      carouselController: _controller,
      items: items,
      options: CarouselOptions(
        autoPlay: true,
        scrollDirection: Axis.horizontal,
        height: MediaQuery.of(context).size.height / 15,
        viewportFraction: 0.3,
        pauseAutoPlayOnTouch: true,
      ),
    );
  }


  Widget _tabItem(var item) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Color(0xff5fbdbc),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "# ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff5fbdbc),
                fontSize: 18,
              ),
            ),
            Text(item),
          ],
        ),
      ),
    );
  }
}
