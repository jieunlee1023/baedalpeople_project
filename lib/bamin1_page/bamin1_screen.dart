
import 'package:baedalpeople/bamin1_page/screen/bamin1_main_screen.dart';
import 'package:baedalpeople/home_page/home_screen.dart';
import 'package:baedalpeople/screens/fav_screen.dart';
import 'package:baedalpeople/screens/my_screen.dart';
import 'package:baedalpeople/screens/order_list_screen.dart';
import 'package:baedalpeople/screens/search_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home_page/screens/address_setting_page.dart';

class Bamin1Page extends StatefulWidget {
  Bamin1Page({Key? key}) : super(key: key);

  @override
  State<Bamin1Page> createState() => _Bamin1PageState();
}

class _Bamin1PageState extends State<Bamin1Page> {

  int _selectedIndex=2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 240, 240, 1.0),
      appBar: AppBar(
        elevation: 0.0,
        title: Image.asset("assets/bamin1_page/logo.png", width: 60),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
              },
              icon: Icon(
                Icons.home_outlined,
                size: 25,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart_outlined,
                  size: 22, color: Colors.black)),
        ],
      ),
      body: Bamin1MainScreen(),
      bottomNavigationBar:  Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 70,
            decoration: BoxDecoration(
            color: Colors.white,
             borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
          ),
          BottomNavigationBar(
            backgroundColor: Color.fromARGB(0, 0, 0, 0),
            selectedItemColor: Color(0xff5fbdbc),
            unselectedItemColor: Colors.grey,
            currentIndex: _selectedIndex,
            elevation: 0.0,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => SearchScreen(),
                          fullscreenDialog: false,
                        ));
                  },
                  child: Icon(Icons.search)), label: "검색"),
              BottomNavigationBarItem(icon: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => FavScreen(),
                          fullscreenDialog: false,
                        ));
                  },
                  child: Icon(Icons.favorite_border)), label: "찜"),
              BottomNavigationBarItem(icon:InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ));
                  },
                  child:  Icon(Icons.delivery_dining)), label: " "),
              BottomNavigationBarItem(icon: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => OrderlistScreen(),
                          fullscreenDialog: false,
                        ));
                  },
                  child: Icon(Icons.receipt_long)), label: "주문내역"),
              BottomNavigationBarItem(icon: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => MyScreen(),
                          fullscreenDialog: false,
                        ));
                  },
                  child: Icon(Icons.tag_faces)), label: "my배민"),
            ],
          ),
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ));
              },
              child: Image.asset("assets/bamin1_page/button_logo.png", width: 80,)),
        ],
      ),
    );
  }


}
