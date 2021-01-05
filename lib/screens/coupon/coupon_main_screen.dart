import 'package:justjam/screens/coupon/coupon_lists_screen.dart';
import 'package:justjam/utill/default.dart';
import 'package:flutter/material.dart';

//TODO 쿠폰 메인페이지
class CouponMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                width: 70,
                child: Image.asset(
                  'assets/images/mainlogo.png',
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                width: 330,
                height: 330,
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: FlatButton(
                              onPressed: () {
                                Navigator.pushNamed(context, CouponLists.id);
                              },
                              padding: EdgeInsets.zero,
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border(
                                    right: BorderSide(
                                        color: kGrayLineColor, width: 1),
                                    bottom: BorderSide(
                                        color: kGrayLineColor, width: 1),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '3',
                                      style: TextStyle(
                                          fontSize: 45,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Text(
                                      '쿠폰',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: FlatButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        color: kGrayLineColor, width: 1),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text.rich(
                                      TextSpan(
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '4',
                                            style: TextStyle(
                                                fontSize: 45,
                                                fontWeight: FontWeight.w800),
                                          ),
                                          TextSpan(
                                            text: '/ 6',
                                            style: TextStyle(fontSize: 22),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      '스티커',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: FlatButton(
                              onPressed: () {},
                              padding: EdgeInsets.zero,
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border(
                                    right: BorderSide(
                                        color: kGrayLineColor, width: 1),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 50,
                                      child: Image.asset(
                                        'assets/images/coupon1.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Text(
                                      '입장권',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: FlatButton(
                              onPressed: () {},
                              padding: EdgeInsets.zero,
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 45,
                                      child: Image.asset(
                                        'assets/images/coupon2.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Text(
                                      '무료충전',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                onPressed: () {},
                child: Container(
                  child: Image.asset('assets/images/spacetip.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
