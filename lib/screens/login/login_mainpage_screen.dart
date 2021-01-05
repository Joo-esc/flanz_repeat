import 'package:justjam/screens/login/login_active_screen.dart';
import 'package:justjam/utill/default.dart';
import 'package:flutter/material.dart';

class LoginMain extends StatelessWidget {
  static final String id = 'loginMain';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 60),
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 60,
                ),
              ),
              Text.rich(
                TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: '커피',
                      style: TextStyle(fontSize: 17, color: kMainColor),
                    ),
                    TextSpan(
                      text: '로 사람과 공간을 잇다',
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30),
                child: Image.asset(
                  'assets/images/logindraw.png',
                  width: 100,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 30,
                ),
                child: Text(
                  '환영합니다!',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Text(
                '무인으로 커피를 제공하는 가장 좋은 방법',
                style: TextStyle(fontSize: 18),
              ),
              Text.rich(
                TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: '플랜즈 커피',
                    style: TextStyle(fontSize: 18, color: kMainColor),
                  ),
                  TextSpan(
                    text: '입니다',
                    style: TextStyle(fontSize: 18),
                  ),
                ]),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, LoginActivePage.id);
                      },
                      padding: EdgeInsets.zero,
                      child: Container(
                        height: 61,
                        decoration: BoxDecoration(
                          color: kMainColor,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Center(
                          child: Text(
                            '로그인',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: FlatButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      child: Container(
                        height: 61,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Center(
                          child: Text(
                            '회원가입',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
