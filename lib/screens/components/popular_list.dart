import 'package:flutter/material.dart';

class PopularList extends StatelessWidget {
  const PopularList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _popularListTop(),
        _popularListItem("popular_1", "타코야끼", "popular_icon1"),
        _popularListItem("popular_2", "와플", "popular_icon2"),
        _popularListItem("popular_3", "과일", "popular_icon2"),
      ],
    );
  }

  Widget _popularListTop(){
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Text("가장 많이 \n검색하고 있어요", style: TextStyle(fontWeight: FontWeight.bold),),
            Text("12.25 22:00 기준", style: TextStyle(color: Colors.grey),),
              ],
            ),
            Spacer(),
            Image.asset("assets/screens_page/popular.png", width: 80),
          ],
        ),
      ),
    );
  }

  Widget _popularListItem(var itemimg, var title, var icon){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      color: Colors.white,
      child: Row(
        children: [
          Image.asset("assets/screens_page/$itemimg.png"),
          Text(title),
          Spacer(),
          Image.asset("assets/screens_page/$icon.png"),
        ],
      ),
    );
  }
}
