import 'package:justjam/screens/coffingnote/coffingnote_main_screen.dart';
import 'package:justjam/utill/default.dart';
import 'package:flutter/material.dart';

class coffingNoteIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/coffing.png'),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.6), BlendMode.darken),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    '나의 커핑 노트',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '10월1주차',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '승민님의',
                            style: TextStyle(
                                color: kTextlighGaryColor, fontSize: 24),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '커피 취향분석',
                            style: TextStyle(
                                color: kTextlighGaryColor, fontSize: 24),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '레포트',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Container(
                        width: 171.24,
                        height: 137,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/bubble.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 38,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 10,
                              ),
                              Text.rich(
                                TextSpan(children: <TextSpan>[
                                  TextSpan(
                                    text: '총 ',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '42',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 50),
                                  ),
                                ]),
                              ),
                              Container(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  '잔누적',
                                  style: TextStyle(
                                      fontSize: 13, color: kTextlighGaryColor),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 130,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, CoffingNoteMain.id);
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    height: 80,
                    width: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: kMainColor,
                    ),
                    child: Center(
                      child: Text(
                        '확인',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
