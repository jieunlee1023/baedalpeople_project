import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'catagory_title.dart';

class ShoppingLive extends StatelessWidget {
  ShoppingLive({Key? key}) : super(key: key);

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          Catagory_title(title: "배민쇼핑라이브", logoimg: "shopping_live_logo"),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _todaySaleImage("shopping_live_1", "shopping_live_mini_1",
                      "해남 무농약 세척 \n꿀고구마 / 3kg...", "50%", "10,900원"),
                  _todaySaleImage("shopping_live_2", "shopping_live_mini_2",
                      "60계치킨 상품권/ \n20,000원", "25%", "15,000원"),
                  _todaySaleImage("shopping_live_3", "shopping_live_mini_3",
                      "[시디즈] 몰티 \n하이체어/샌드베...", "25%", "259,000원"),
                  _todaySaleImage("shopping_live_4", "shopping_live_mini_4",
                      "[째보식당] \n째보간장모둠 / 1,...", "10%", "30,600원"),
                  _todaySaleImage("shopping_live_5", "shopping_live_mini_5",
                      "[베베당] 유기농 \n쌀떡뻥 세트/ 유...", "62%", "9,900원"),
                  _todaySaleImage("shopping_live_6", "shopping_live_mini_6",
                      "리터스포트 / \n어드벤트 캘린더...", "13%", "24,900원"),
                  _todaySaleImage("shopping_live_7", "shopping_live_mini_7",
                      "빅토리아 탄산수 / \n[BEST] 청포도 +...", "47%", "19,900원"),
                  _lastBox(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _todaySaleImage(
      var item, var miniitem, var itemtext, var sale, var price) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
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
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset("assets/home_page/${miniitem}.png", width: 60)),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemtext,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        sale,
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,fontSize: 17),
                      ),
                      SizedBox(width: 5),
                      Text(
                        price,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold,fontSize: 17),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _lastBox() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        width: 150,
        height: 290,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border:
              Border.all(color: Color.fromRGBO(206, 206, 206, 0.5), width: 0.8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "더 많은\n쇼핑라이브\n보기",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
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
