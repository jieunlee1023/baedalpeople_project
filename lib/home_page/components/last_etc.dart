import 'package:baedalpeople/home_page/components/catagory_title.dart';
import 'package:baedalpeople/home_page/home_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LastEtc extends StatelessWidget {
  LastEtc({Key? key}) : super(key: key);

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          Catagory_title(title: "이런 일도 한답니다", logoimg: "etc_logo"),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  _buildRectangleImage(1, "etc1", "배민방학도시락, 함께 응원해요"),
                  SizedBox(height: 30),
                  _buildSquereImage(2, "etc4", "배민외식업컨퍼런스 신청하고 경품 받으세요!"),
                ],
              ),
              Column(
                children: [
                  _buildSquereImage(1, "etc3", "카페 인기메뉴, 푹신푹신 수플레 오믈렛 만들기"),
                  SizedBox(height: 10),
                  _buildRectangleImage(2, "etc2", "환경부의 일회용컵 보증금제 안내 드립니다"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRectangleImage(var id, var img, var text) {
    return InkWell(
      onTap: () {
        if (id == 1) {
          print("배민 방학 도시락 들어감");
        } else {
          print("환경어쩌구 들어감");
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset("assets/home_page/${img}.png", width: 180)),
            Container(width: 180, child: Text(text)),
          ],
        ),
      ),
    );
  }

  Widget _buildSquereImage(var id, var img, var text) {
    return InkWell(
      onTap: () {
        if (id == 1) {
          launchKaKaoChannel(
              "https://ceo.baemin.com/knowhow/9870?utm_source=baeminapp&utm_medium=non_display");
        } else {
          launchKaKaoChannel(
              "https://ceo.baemin.com/event/conference-2022?utm_source=baeminapp&utm_medium=non_display&utm_campaign=mkt_prj_conf2022_1122&utm_content=banner_mem_lead_esg");
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset("assets/home_page/${img}.png", width: 180)),
            Container(width: 180, child: Text(text)),
          ],
        ),
      ),
    );
  }
}
