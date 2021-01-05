import 'package:justjam/screens/searchitem/searchitem_final_screen.dart';
import 'package:justjam/utill/default.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//TODO Reservation page. (결제 진행 페이지)

class SearchItemReserved extends StatelessWidget {
  static final String id = 'searchItemReserved';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          '입장권 구매 및 예약',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // TODO section1 Starts
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset(
                      'assets/images/reservedtop.png',
                      width: 200,
                    ),
                    padding: EdgeInsets.only(top: 20),
                  ),
                  Container(
                    child: Text(
                      '그루스터디카페',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  Container(
                    height: 75,
                    color: Color(0xFFF8F9FB),
                    child: Center(
                      child: Text(
                        '10월 19일 (목)    9:00 ~ 20:00',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              height: 14,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 0.5,
                    color: Color(0xFFBEBEBE),
                  ),
                ),
                color: ksizedBoxColor,
              ),
            ),
            SizedBox(),
            //TODO section2 starts
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '예약자 정보',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Text(
                          '예약자 이름',
                          style: TextStyle(
                            fontSize: 18,
                            color: kTextDarkGaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '이승민',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Text(
                          '예약자 번호',
                          style: TextStyle(
                            fontSize: 18,
                            color: kTextDarkGaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '010-6643-3346',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(
                      width: 1,
                      color: Color(0xFFDADADA),
                    ))),
                  ),
                ],
              ),
            ),
            //예약자 정보 끝
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '가격 및 할인 정보',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '예약금액',
                          style: TextStyle(
                            fontSize: 16,
                            color: kTextDarkGaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '8,000원',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '할인금액',
                          style: TextStyle(
                            fontSize: 16,
                            color: kTextDarkGaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '0원',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '쿠폰',
                          style: TextStyle(
                            fontSize: 16,
                            color: kTextDarkGaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '적용 가능 4장',
                          style: TextStyle(
                            fontSize: 14,
                            color: kTextlighGaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '포인트',
                          style: TextStyle(
                            fontSize: 16,
                            color: kTextDarkGaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '0원',
                          style: TextStyle(
                            color: kTextlighGaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          width: 1,
                          color: Color(0xFFDADADA),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //TODO Section2 ends 3 starts
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(
                border: Border.all(color: kTextlighGaryColor, width: 1),
                borderRadius: BorderRadius.circular(12),
              ),
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(12.0),
                        topRight: const Radius.circular(12.0),
                      ),
                      color: Color(0xFFF8F8F8),
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '결제수단',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            '은행 점검시간인 23:30~~00:30까지 이용 불가한 계좌이체 결제수단이 포함되어 있습니다.',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF979797),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Payment(),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            width: 1,
                            color: Color(0xFFDADADA),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, SearchReservedDone.id);
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: kMainColor,
                ),
                child: Center(
                  child: Text(
                    '예약하기',
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
    );
  }
}

enum PaymentRoute { kakaopay, chi, card, phone }

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  PaymentRoute selectDefault = PaymentRoute.kakaopay;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          width: 210,
          child: ListTile(
            title: Container(
              width: 130,
              child: Image.asset(
                'assets/images/payment1.png',
                fit: BoxFit.contain,
                width: 100,
              ),
            ),
            trailing: Text(
              '카카오페이',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            leading: Radio(
              value: PaymentRoute.kakaopay,
              groupValue: selectDefault,
              onChanged: (PaymentRoute value) {
                setState(() {
                  selectDefault = value;
                });
              },
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          width: 175,
          child: ListTile(
            title: Container(
              width: 130,
              child: Image.asset(
                'assets/images/payment2.png',
                fit: BoxFit.contain,
                width: 100,
              ),
            ),
            trailing: Text(
              '차이',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            leading: Radio(
              value: PaymentRoute.chi,
              groupValue: selectDefault,
              onChanged: (PaymentRoute value) {
                setState(() {
                  selectDefault = value;
                });
              },
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          width: 198,
          child: ListTile(
            title: Container(
              width: 130,
              child: Icon(
                FontAwesomeIcons.creditCard,
                size: 30,
              ),
            ),
            trailing: Text(
              '신용카드',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            leading: Radio(
              value: PaymentRoute.card,
              groupValue: selectDefault,
              onChanged: (PaymentRoute value) {
                setState(() {
                  selectDefault = value;
                });
              },
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          width: 190,
          child: ListTile(
            title: Container(
              width: 130,
              child: Icon(
                FontAwesomeIcons.mobileAlt,
                size: 34,
              ),
            ),
            trailing: Text(
              '핸드폰',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            leading: Radio(
              value: PaymentRoute.phone,
              groupValue: selectDefault,
              onChanged: (PaymentRoute value) {
                setState(() {
                  selectDefault = value;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
