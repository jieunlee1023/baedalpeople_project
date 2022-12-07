import 'package:baedalpeople/bamin1_page/components/new_shop_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../home_page/screens/address_setting_page.dart';
import '../components/slide_event.dart';

class Bamin1MainScreen extends StatelessWidget {
  Bamin1MainScreen({Key? key}) : super(key: key);

  List<String> foodItemList = [
    "assets/bamin1_page/1.png", //1인분
    "assets/bamin1_page/2.png", // 족발 보쌈
    "assets/bamin1_page/4.png", //돈까스회일식
    "assets/bamin1_page/6.png", //고기 구이
    "assets/bamin1_page/5.png", //피자
    "assets/bamin1_page/18.png", //맛집랭킹
    "assets/bamin1_page/3.png", // 찜탕찌개
    "assets/bamin1_page/8.png", // 양식
    "assets/bamin1_page/10.png", //중식
    "assets/bamin1_page/11.png", //아시안
    "assets/bamin1_page/9.png", //치킨
    "assets/bamin1_page/12.png", //백반 죽 국수
    "assets/bamin1_page/16.png", //패스트푸드
    "assets/bamin1_page/14.png", //분식
    "assets/bamin1_page/15.png", //카페 디저트
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildLocation(context, "북구 상학로 35"),
        SlideEvent(),
        _buildFoodItemList(),
        SizedBox(height: 15),
        NewShopItem(),
      ],
    );
  }

  Widget _buildLocation(var context, var text) {
    return Container(
      color: Colors.white,
      child: TextButton(
        onHover: (value) => AsyncSnapshot.nothing(),
        onPressed: () {
          Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => AddressSettionPage(),
                fullscreenDialog: true,
              ));
        },
        child: Row(
          children: [
            Text(
              text,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Icon(Icons.arrow_drop_down_outlined, color: Colors.black),
          ],
        ),
      ),
    );
  }

  Widget _buildFoodItemList() {
    return Container(
      width: double.infinity,
      height: 240,
      color: Colors.white,
      child: GridView.count(
        crossAxisCount: 5,
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
        children: List.generate(
            foodItemList.length,
            (index) => Column(
                  children: [
                    InkWell(
                        onTap: () {},
                        child: Image.asset(foodItemList[index], width: 70)),
                  ],
                )),
      ),
    );
  }
}
