import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'catagory_title.dart';


class SlideItem extends StatelessWidget {
  SlideItem({Key? key}) : super(key: key);

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          Catagory_title(title: "요즘 우리동네 인기 맛집", logoimg: "popular_icon"),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  _todaySaleImage("popular_item1", "요달의 찜닭","4.9", "0원~4,000원", "30~40분"),
                  _todaySaleImage("popular_item2", "닭발의 왕족...","5.0", "0원~3,000원","25~30분"),
                  _todaySaleImage("popular_item3", "맛있는 막창집...","5.0", "0원~5,200원","35~45분"),
                  _todaySaleImage("popular_item4", "굽네치킨&피자...","4.8", "0원~4,800원","20~35분"),
                  _todaySaleImage("popular_item5", "맥시카나치킨...","4.7", "0원~4,000원","30~40분"),
                  _todaySaleImage("popular_item6", "두부김치전문점...","4.5", "0원~3,000원","25~45분"),
                  _todaySaleImage("popular_item7", "치킨후라이...","4.5", "0원~3,000원","50~60분"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _todaySaleImage(var item, var title, var star, var deliveryTip, var time) {
    return Padding(
      padding: const EdgeInsets.only(right: 5, left: 5, bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                  color: Color.fromRGBO(206, 206, 206, 0.5), width: 1),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/screens_page/$item.png",
                width: 150,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3.0),
            child: Row(
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.star,
                  color: CupertinoColors.systemYellow,
                  size: 18,
                ),
                Text(star, style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
              ],
            ),
          ),
          Text("배달팁 $deliveryTip"),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              height: 33,
              decoration: BoxDecoration(
                color: Color.fromRGBO(236, 236, 236, 1.0,),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Icon(Icons.access_time_outlined, size: 16),
                  SizedBox(width: 5),
                  Text(time),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
