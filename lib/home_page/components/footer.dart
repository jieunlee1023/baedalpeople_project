import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            _buildFooterTextButton("사업자정보확인"),
            _buildFooterBar(),
            _buildFooterTextButton("이용약관"),
            _buildFooterBar(),
            _buildFooterTextButton("전자금융거래이용약관"),
            _buildFooterBar(),
            _buildFooterTextButton("개인정보처리방침"),
          ],
        ),
        _companyInfo(),
      ],
    );
  }

  Widget _buildFooterTextButton(var text) {
    return TextButton(
        onPressed: () {
          print("${text} 눌러짐");
        },
        child: Text(
          text,
          style: TextStyle(
            fontSize: 10,
            color: Colors.grey,
          ),
        ));
  }

  Widget _buildFooterBar() {
    return Text(
      "|",
      style: TextStyle(
        fontSize: 10,
        color: Colors.grey,
      ),
    );
  }

  Widget _companyInfo() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Text("(주)우아한형제들"),
             Icon(Icons.keyboard_arrow_down)
            ],
          ),
          Container(
            width: double.infinity,
            child: Text(
                "(주)우아한형제들은 통신판매중개자이며, 통신판매의 당사자가 아닙니다. "
                    "따라서 (주)우하한 형제들은 상품, 거래정보 및 거래에 대하여 책임을 지지 않습니다.",
            style: TextStyle(
              fontSize: 11,
              color: Colors.grey,
            ),),
          )
        ],
      ),
    );
  }
}
