import 'package:baedalpeople/home_page/components/slide_event.dart';
import 'package:flutter/material.dart';

class Catagory extends StatelessWidget {
  const Catagory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _catagoryTopItem("배민1","main1"),
              SizedBox(width: 10),
              _catagoryTopItem("배달","main2"),
            ],
          ),
          SizedBox(height: 16),
          _catagoryCenterItem(),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _catagoryBottomItem("쇼핑라이브","main4"),
              _catagoryBottomItem("선물하기","main5"),
              _catagoryBottomItem("전국별미","main6"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _catagoryTopItem(var id, var img) {
    return InkWell(
      onTap: (){
        print("$id 탑 버튼 눌러짐");
      },
      child: Container(
        width: 175,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: AssetImage(
              "assets/home_page/${img}.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _catagoryCenterItem(){
    return InkWell(
      onTap:  (){
        print("포장 버튼 눌러짐");
      },
      child: Container(
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: AssetImage(
              "assets/home_page/main3.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );

  }

  Widget _catagoryBottomItem(var id , var img) {
    return InkWell(
      onTap: (){
        print("$id 바텀 버튼 눌러짐");
      },
      child: Container(
        width: 113,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: AssetImage(
              "assets/home_page/${img}.png",
            ),
            height: 60,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
