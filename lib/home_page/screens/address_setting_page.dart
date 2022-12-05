import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'map_location_page.dart';

class AddressSettionPage extends StatelessWidget {
  const AddressSettionPage({Key? key}) : super(key: key);


  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
          color: Colors.white,
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: _appBar(),
          body: Column(
            children: [
              _buildSearchbar(),
              _buildCurrentLocation(context),
              _buildBox(),
              _buildMyHome(),
              _buildBox(),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      foregroundColor: Colors.black,
      title: Column(
        children: [
          Container(
            width: 40,
            height: 3,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "주소 설정",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          )
        ],
      ),
      // automaticallyImplyLeading: false,
      actions: [
        TextButton(
          style: ButtonStyle(
            alignment: Alignment.bottomCenter,
          ),
          onPressed: () {},
          child: Text(
            "편집",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSearchbar() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: TextField(
        autofocus: false,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFefefef),
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide(color: Colors.white)),
          prefixIconColor: Colors.grey,
          prefixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          hintText: "지번 , 도로명, 건물명으로 검색",
        ),
      ),
    );
  }

  Widget _buildCurrentLocation(BuildContext context) {
    return InkWell(
      onTap: (){
        print("현재 위치로 설정 클릭");
        Navigator.push(context, CupertinoPageRoute(
          builder: (context) => MapLocationPage(),
          fullscreenDialog: false,
        ));
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(Icons.my_location_rounded, size: 18),
            SizedBox(width: 5),
            Text(
              "현재 위치로 설정",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Spacer(),
            Icon(Icons.keyboard_arrow_right_sharp, color: Colors.grey)
          ],
        ),
      ),
    );
  }

  Widget _buildMyHome() {
    return InkWell(
      onTap: (){
        print("우리집 추가 눌러짐");
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
        child: Row(
          children: [
            Icon(Icons.home_outlined),
            SizedBox(width: 10),
            Text(
              "우리집 추가",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBox(){
    return Container(
      width: double.infinity,
      height: 12,
      decoration: BoxDecoration(
      color: Color.fromRGBO(230, 230, 230, 0.5),
        border: Border.symmetric(horizontal: BorderSide(color: Color.fromRGBO(200, 200, 200, 0.3))),
      ),
    );
  }
}