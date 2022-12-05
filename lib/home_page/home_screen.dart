import 'package:baedalpeople/home_page/components/bottom_banner.dart';
import 'package:baedalpeople/home_page/components/catagory.dart';
import 'package:baedalpeople/home_page/components/footer.dart';
import 'package:baedalpeople/home_page/components/heart_present.dart';
import 'package:baedalpeople/home_page/components/last_etc.dart';
import 'package:baedalpeople/home_page/components/national_delicacy.dart';
import 'package:baedalpeople/home_page/components/shopping_live.dart';
import 'package:baedalpeople/home_page/components/slide_tab.dart';
import 'package:baedalpeople/home_page/screens/address_setting_page.dart';
import 'package:baedalpeople/models/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'components/slide_event.dart';
import 'components/today_sale.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 240, 240, 1.0),
      appBar: _appBar(context),
      body: ListView(
        children: [
          _buildSearchbar(),
          SlideTab(),
          Catagory(),
          SlideEvent(),
          TodaySale(),
          SizedBox(height: 15),
          ShoppingLive(),
          SizedBox(height: 15),
          HeartPresent(),
          SizedBox(height: 15),
          NationalDelicacy(),
          SizedBox(height: 15),
          LastEtc(),
          SizedBox(height: 15),
          BottomBanner(),
          SizedBox(height: 10),
          Footer(),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff5fbdbc),
      elevation: 0.0,
      title: InkWell(
        onTap: () {
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
              users[0].address,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(Icons.arrow_drop_down_outlined, color: Colors.white),
          ],
        ),
      ),
      actions: [
        Icon(Icons.grid_view),
        SizedBox(width: 15),
        Icon(FontAwesomeIcons.bell, size: 22),
        SizedBox(width: 15),
        Icon(FontAwesomeIcons.faceSmile, size: 22),
        SizedBox(width: 10),
      ],
    );
  }

  Widget _buildSearchbar() {
    return Container(
      width: double.infinity,
      height: 75,
      decoration: BoxDecoration(
        color: Color(0xff5fbdbc),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          autofocus: false,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: InputBorder.none,
              prefixIconColor: Color(0xff5fbdbc),
              prefixIcon: Icon(Icons.search),
              contentPadding: EdgeInsets.symmetric(
                vertical: 15,
              ),
              hintText: "배고프니까 일단 검색!!",
              hintStyle: TextStyle(
                color: Colors.grey,
              )),
        ),
      ),
    );
  }
}

launchKaKaoChannel(String urlLink) async {
  final url = Uri.parse(
    urlLink,
  );
  if (await canLaunchUrl(url)) {
    launchUrl(url);
  } else {
    print("Can't launch $url");
  }
}
