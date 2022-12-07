import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Catagory_title extends StatelessWidget {
  const Catagory_title({Key? key, required this.title, required this.logoimg})
      : super(key: key);

  final String title;
  final String logoimg;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 8, top: 16, bottom: 5),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(width: 10),
          Image.asset(
            "assets/screens_page/$logoimg.png",
            width: 30,
          ),
          SizedBox(width: 7),
          InkWell(
            onTap: () {
              print(" 전체보기 눌러짐");
            },
            child: Row(
              children: [
                Text(
                  "광고",
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(
                  FontAwesomeIcons.circleQuestion,
                  size: 15,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
