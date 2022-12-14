import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'catagory_title.dart';

class NewShopItem extends StatelessWidget {
  NewShopItem({Key? key}) : super(key: key);

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          Catagory_title(title: "조리도 빠른 배민1 가게", logoimg: "new_shop_logo"),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  _todaySaleImage("item1", "크로플 오리아...","4.9", "4,000원"),
                  _todaySaleImage("item2", "생과일 주스...","5.0", "3,000원"),
                  _todaySaleImage("item3", "따끈한 어묵탕...","5.0", "5,200원"),
                  _todaySaleImage("item4", "냐미냐미족발...","4.8", "4,800원"),
                  _todaySaleImage("item5", "디저트카페...","4.7", "4,000원"),
                  _todaySaleImage("item6", "바삭한 치킨후라이...","4.5", "3,000원"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _todaySaleImage(var item, var title, var star, var deliveryTip) {
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
                "assets/bamin1_page/$item.png",
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
        ],
      ),
    );
  }
}
