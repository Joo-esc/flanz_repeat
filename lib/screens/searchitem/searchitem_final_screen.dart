import 'package:justjam/screens/home__screen.dart';
import 'package:justjam/utill/default.dart';
import 'package:flutter/material.dart';

//TODO 예약 완료를 알려주는 페이지

class SearchReservedDone extends StatelessWidget {
  static final String id = 'reservedDone';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          '예약완료',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Text(
            '결제가 완료되었습니다',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 190,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFFDFDFDF),
                width: 1,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '그루스터디카페',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '10월 19일(목)',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    '입장권',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: Image.asset(
              'assets/images/qrcode.png',
              width: 300,
            ),
          ),
          Text(
            '해당 QR코드를 통해 음료를 구매하시길 바랍니다.',
            style: TextStyle(
              fontSize: 15,
              color: kTextlighGaryColor,
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, HomeScreen.id);
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 40),
              height: 70,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xFFEBBB9D),
              ),
              child: Center(
                child: Text(
                  '확인하기',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
