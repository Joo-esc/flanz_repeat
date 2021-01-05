import 'package:justjam/screens/coffingnote/coffingnote_iteminfo_screen.dart';
import 'package:justjam/screens/coffingnote/coffingnote_rate_screen.dart';
import 'package:flutter/material.dart';
import 'package:justjam/utill/default.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CoffingNoteMain extends StatelessWidget {
  static final String id = 'coffingNoteMain';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.calendar_today_outlined,
            size: 28,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.more_vert,
            size: 28,
          ),
          SizedBox(
            width: 10,
          ),
        ],
        iconTheme: IconThemeData(
          color: kTextDarkGaryColor,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/coffingmainbg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    child: Text(
                      '나의 커핑노트',
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                    padding: EdgeInsets.only(top: 20, bottom: 10),
                  ),
                  Text(
                    '9.1 - 10.1',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: kTextlighGaryColor),
                  ),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
            //
            // ),
            Container(
              height: 380.08,
              width: double.infinity,
              child: new Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return coffingitems[index];
                },
                itemCount: 3,
                viewportFraction: 0.85,
                scale: 0.93,
                pagination: null,
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {},
                    child: Container(
                      height: 60,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xFFF8965B),
                      ),
                      child: Center(
                        child: Text(
                          '한달 주기로 보기',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    padding: EdgeInsets.zero,
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Container(
                      height: 60,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          '일주일 주기로 보기',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    padding: EdgeInsets.zero,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> coffingitems = [
  RoasteryInfo(),
  RoasteryAnal(),
  VisitPaceInfo(),
];

class RoasteryInfo extends StatelessWidget {
  const RoasteryInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFFDE6D3),
            spreadRadius: 1,
            blurRadius: 20,
            offset: Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      width: 350.02,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                height: 10,
                width: 10,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: kMainColor),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                '로스터리 정보',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/roasteryitem1.png',
                      width: 135,
                      fit: BoxFit.contain,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFCF9775),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            '프릳츠',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '25',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: kMainColor,
                            ),
                          ),
                          TextSpan(
                            text: '잔',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                padding: EdgeInsets.symmetric(vertical: 28),
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/images/roasteryitem2.png',
                    width: 135,
                    fit: BoxFit.contain,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFF8CEAC),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '프레이져',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: '25',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: kMainColor,
                          ),
                        ),
                        TextSpan(
                          text: '잔',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, CoffingNoteItemInfo.id);
            },
            child: Container(
              child: Center(
                child: Text(
                  '전체보기',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFB06B41),
              ),
              width: 195.16,
              height: 40.59,
            ),
          ),
        ],
      ),
    );
  }
}

class VisitPaceInfo extends StatelessWidget {
  const VisitPaceInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFFDE6D3),
            spreadRadius: 1,
            blurRadius: 20,
            offset: Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      width: 350.02,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFF6813F),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                '방문한 공간 정보',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/wework.jpg',
                        fit: BoxFit.cover,
                        height: 140,
                        width: 150,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            '위워크 1층 로비',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '13',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFF99962),
                            ),
                          ),
                          TextSpan(
                            text: '번 방문',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kTextlighGaryColor,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                padding: EdgeInsets.symmetric(vertical: 28),
              ),
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/gachon.jpg',
                      fit: BoxFit.cover,
                      height: 140,
                      width: 150,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Container(),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '가천대학교 공과대학',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: '29',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFF99962),
                          ),
                        ),
                        TextSpan(
                          text: '잔',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          FlatButton(
            onPressed: () {},
            child: Container(
              child: Center(
                child: Text(
                  '전체보기',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFFCBC5B),
              ),
              width: 195.16,
              height: 40.59,
            ),
          ),
        ],
      ),
    );
  }
}

class RoasteryAnal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFFDE6D3),
            spreadRadius: 1,
            blurRadius: 20,
            offset: Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      child: Image.asset(
        'assets/images/coffingitem1.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
