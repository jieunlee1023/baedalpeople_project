import 'package:flutter/material.dart';

import '../screens/search_screen.dart';

class SearchList extends StatefulWidget {
  const SearchList({Key? key,required this.text})
      : super(key: key);

  final String text;

  @override
  State<SearchList> createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {

        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          height: 30,
          decoration: BoxDecoration(
            color: Color.fromRGBO( 226, 255,  253, 1.0,),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Text(
                widget.text,
                style: TextStyle(
                  color: Color(0xff5fbdbc),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "  X",
                style: TextStyle(
                  color: Color(0xff5fbdbc),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
