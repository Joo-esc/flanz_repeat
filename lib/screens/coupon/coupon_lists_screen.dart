import 'package:justjam/utill/default.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home__screen.dart';
//TODO 쿠폰 보관함확인 페이지 보유한 쿠폰<--> 사용한 쿠폰으로 궛ㅇ

class CouponLists extends StatelessWidget {
  static final String id = 'couponLists';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: kTextDarkGaryColor, //change your color here
        ),
        title: Text(
          '보관함',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      backgroundColor: Color(0xFFF6F6F6),
      body: Column(
        children: <Widget>[
          Container(
            child: DefaultTabController(
              length: 2,
              initialIndex: 0,
              child: Column(
                children: [
                  Container(
                    child: TabBar(
                      indicatorColor: kMainColor,
                      labelColor: kMainColor,
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      unselectedLabelColor: Color(0xFF4F4F4F),
                      unselectedLabelStyle: TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                      tabs: [
                        Tab(
                          child: Text(
                            '사용가능한쿠폰',
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            '지난쿠폰',
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: Color(0xFFDADADA),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 600,
                    width: double.infinity,
                    child: TabBarView(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Container(
                                color: Colors.white,
                                width: double.infinity,
                                height: 130,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      '보유한 쿠폰 번호를 등록해주세요',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 150,
                                      height: 44,
                                      child: Text(
                                        '쿠폰추가',
                                        style: TextStyle(
                                          color: kTextlighGaryColor,
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            color: klightGrayBlueColor),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: GridView.builder(
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                        childAspectRatio: 2.5,
                                        crossAxisCount: 1,
                                      ),
                                      itemCount: 3,
                                      itemBuilder: (context, index) =>
                                          CouponLIstLeft(
                                            items: couponItems[index],
                                          )),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: UsedCoupon(),
                          padding: EdgeInsets.only(top: 10),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class UsedCoupon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/coupoicon.png',
          width: 200,
          fit: BoxFit.contain,
        ),
        Text(
          '지난 쿠폰이 없습니다',
          style: TextStyle(
            fontSize: 22,
            color: Color(0xFF9098B1),
          ),
        ),
      ],
    );
  }
}

class CouponLIstLeft extends StatelessWidget {
  const CouponLIstLeft({
    Key key,
    this.items,
  }) : super(key: key);
  final CouponListsItem items;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                insetPadding:
                    EdgeInsets.symmetric(vertical: 40, horizontal: 40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 800,
                  width: double.infinity,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Image.asset(
                            'assets/images/baniladrink.png',
                            fit: BoxFit.contain,
                            height: 200,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 50),
                          child: Text(
                            '바닐라라떼',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: Image.asset('assets/images/qrcodecoupon.png'),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 10),
                            height: 80,
                            width: 230,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
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
                      ]),
                ),
              );
            });
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 6),
        child: Row(
          children: [
            Container(
              child: Image.asset(
                items.image,
                fit: BoxFit.contain,
                width: 55,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 28,
              ),
            ),
            VerticalDivider(
              color: kTextlighGaryColor,
              width: 10,
              indent: 20,
              endIndent: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    items.title,
                    style: TextStyle(fontSize: 18),
                  ),
                  Container(
                    child: Text(
                      '유효기간 : 2020.10.31',
                      style: TextStyle(fontSize: 13, color: kTextlighGaryColor),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 2),
                  ),
                  Text(
                    '유희사항 : 특정 기계에는 해당 \n'
                    '음료가 제공되지 않을 수 있음. \n'
                    '(아메리카노 대체 가능)',
                    style: TextStyle(fontSize: 13, color: kTextlighGaryColor),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(),
            ),
            Container(
              alignment: AlignmentDirectional.bottomEnd,
              child: FlatButton(
                onPressed: () {},
                padding: EdgeInsets.only(bottom: 5, left: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: kMainColor,
                  ),
                  width: 40,
                  height: 40,
                  child: Center(
                      child: Text(
                    '상세\n보기',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  )),
                ),
              ),
            ),
          ],
        ),
        height: 135,
        color: Colors.white,
      ),
    );
  }
}

class CouponListsItem {
  final String image, title;
  CouponListsItem({this.image, this.title});
}

List<CouponListsItem> couponItems = [
  CouponListsItem(image: 'assets/images/baniladrink.png', title: '바닐라라떼쿠 쿠폰'),
  CouponListsItem(image: 'assets/images/americanodrink.png', title: '아메리카노 쿠폰'),
  CouponListsItem(image: 'assets/images/lattedrink.png', title: '커피라떼 쿠폰'),
];
