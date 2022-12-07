import 'package:baedalpeople/models/SearchList.dart';
import 'package:baedalpeople/screens/components/popular_list.dart';
import 'package:baedalpeople/screens/components/slide_item.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => SearchScreenState();
}

class SearchScreenState extends State<SearchScreen> {
  List<SearchList> searchList = [];
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 240, 240, 1.0),
      appBar: _appBar(),
      body: ListView(
        children: [
          _recentSearch(),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                        searchList.length, (index) => searchList[index]),
                  ],
                ),
              ),
            ),
          ),
          _advertisement(),
          SizedBox(height: 10),
          SlideItem(),
          SizedBox(height: 10),
          PopularList(),
          SizedBox(height: 10),
          _advertisementBottom(),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      title: Padding(
        padding: const EdgeInsets.all(5.0),
        child: TextField(
          controller: _textEditingController,
          onSubmitted: (value) {
            print("$value : <------------------------");
            _textEditingController.clear();
            _handleSubmitted(value);
          },
          autofocus: false,
          decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromRGBO(235, 235, 235, 1.0),
              border: InputBorder.none,
              prefixIconColor: Colors.grey,
              prefixIcon: Icon(Icons.search),
              contentPadding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              hintText: "검색어를 입력해주세요",
              hintStyle: TextStyle(
                color: Colors.grey,
              )),
        ),
      ),
    );
  }

  void _handleSubmitted(mText) {
    _textEditingController.clear();
    setState(() {
      searchList.add(SearchList(text: mText));
    });
  }

  Widget _recentSearch() {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text("최근 검색어", style: TextStyle(fontWeight: FontWeight.bold)),
                Spacer(),
                Container(
                  width: 60,
                  height: 25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(241, 241, 241, 1.0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: InkWell(
                    onTap: () {
                      print("전체삭제 눌러짐");
                    },
                    child: Text("전체삭제",
                        style: TextStyle(color: Colors.black45, fontSize: 13),
                        textAlign: TextAlign.center),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _advertisement() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Image.asset("assets/screens_page/advertisement.png"),
      ),
    );
  }

  Widget _advertisementBottom() {
    return Container(
      color: Colors.white,
      child: Image.asset("assets/screens_page/popular_banner.png"),
    );
  }
}
