import 'package:justjam/provider/google_sign_in.dart';
import 'package:justjam/screens/coffingnote/coffingnote_main_screen.dart';
import 'package:justjam/screens/coupon/coupon_lists_screen.dart';
import 'package:justjam/screens/home__screen.dart';
import 'package:justjam/screens/login/login_mainpage_screen.dart';
import 'package:justjam/screens/searchitem/search_detail_screen.dart';
import 'package:justjam/utill/default.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class LoginActivePage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  static final String id = 'loginActivePage';
  @override
  Widget buildLoading() => Center(child: CircularProgressIndicator());
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        final provider =
            Provider.of<GoogleSignInProvider>(context, listen: false);
        if (provider.isSignIn) {
          return buildLoading();
        } else if (snapshot.hasData) {
          return HomeScreen();
        } else if (snapshot.hasData == null) {
          return LoginMain();
        } else {
          return ShowLogin(
              formKey: _formKey,
              emailController: _emailController,
              passwordController: _passwordController);
        }
      },
    );
  }
}

class ShowLogin extends StatelessWidget {
  const ShowLogin({
    Key key,
    @required GlobalKey<FormState> formKey,
    @required TextEditingController emailController,
    @required TextEditingController passwordController,
  })  : _formKey = formKey,
        _emailController = emailController,
        _passwordController = passwordController,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController _emailController;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.center,
        child: Column(
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 130,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Text(
                'Welcome to Planz',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
            ),
            Text(
              '로그인 해주세요',
              style: TextStyle(
                color: Color(0xFF9098B1),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    height: 48,
                    child: TextFormField(
                      // ignore: missing_return
                      validator: (String value) {
                        // ignore: unnecessary_statements, missing_return
                        value.isEmpty ? "이메일을 입력해주세요" : null;
                      },
                      controller: _emailController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail_outline),
                        prefixStyle: TextStyle(
                          color: Colors.black,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: klightGrayBlueColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: klightGrayBlueColor),
                        ),
                        hintText: '이메일',
                        hintStyle: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 48,
                    child: TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_outline_rounded),
                        prefixStyle: TextStyle(
                          color: Colors.black,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: klightGrayBlueColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: klightGrayBlueColor),
                        ),
                        hintText: '비밀번호',
                        hintStyle: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 50),
                    height: 65,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFFCA9371),
                    ),
                    child: Center(
                      child: Text(
                        '로그인',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  FlatButton(
                    onPressed: () {
                      final google = Provider.of<GoogleSignInProvider>(context,
                          listen: false);
                      google.login();
                    },
                    padding: EdgeInsets.zero,
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border:
                            Border.all(width: 1, color: klightGrayBlueColor),
                      ),
                      child: Container(
                        width: double.infinity,
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.google,
                              color: Colors.red,
                            ),
                            Container(
                              child: Text(
                                '구글로 로그인하기',
                                style: TextStyle(
                                  color: kTextDarkGaryColor,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // OutlineButton.icon(
                  //   padding: EdgeInsets.symmetric(
                  //     vertical: 20,
                  //     horizontal: 110,
                  //   ),
                  //   onPressed: () {},
                  //   icon: Icon(FontAwesomeIcons.google),
                  //   label: Text('구글로 로그인'),
                  //   le
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
