import 'package:justjam/screens/coffingnote/coffingnote_rate_screen.dart';
import 'package:justjam/utill/default.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hawk_fab_menu/hawk_fab_menu.dart';

class CoffingNoteItemInfo extends StatelessWidget {
  static final String id = 'coffingNoteItemInfo';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: kTextDarkGaryColor,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: Builder(
        // builder is used only for the snackbar, if you don't want the snackbar you can remove
        // Builder from the tree
        builder: (BuildContext context) => HawkFabMenu(
          icon: AnimatedIcons.menu_arrow,
          fabColor: Color(0xFFFCBC5B),
          iconColor: Colors.white,
          items: [
            HawkFabMenuItem(
              label: '평가하기',
              ontap: () {
                Navigator.pushNamed(context, CoffingNoteRate.id);
              },
              icon: Icon(Icons.star_rate),
              color: Color(0xFFF8965B),
              labelColor: Colors.black,
            ),
            HawkFabMenuItem(
              label: '찜하기',
              ontap: () {
                Scaffold.of(context)..hideCurrentSnackBar();
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text('즐겨찾는 로스터리에 찜이 되었습니다'),
                  ),
                );
              },
              color: Color(0xFFD73B01),
              icon: Icon(FontAwesomeIcons.heart),
              labelColor: Colors.black,
            ),
          ],
          body: SingleChildScrollView(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(45),
                              bottomRight: Radius.circular(45),
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              width: double.infinity,
                              height: 643,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/coffingnoteitembg.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 153,
                                  ),
                                  Container(
                                    child: Image.asset(
                                      'assets/images/roasteryitem1.png',
                                      width: 125,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                      top: 46,
                                      bottom: 30,
                                    ),
                                    child: Text(
                                      '프릳츠 커피 컴퍼니',
                                      style: TextStyle(
                                        fontSize: 34,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0xFF000000)
                                              .withOpacity(0.25),
                                          blurRadius: 4,
                                          offset: Offset(0,
                                              11), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: ClipRRect(
                                      child: Image.asset(
                                        'assets/images/coffingblending.png',
                                        height: 155,
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(11),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(bottom: 30),
                              width: double.infinity,
                              child: Text(
                                '로스터리 소개',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: kMainColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              '<프릳츠 커피 컴퍼>\n 프릳츠프릳츠 로스터리는 최시신 생산시설로 제품 생산성 및 품질 향상에 노력을 기울이고 있습니다.매 로스팅 배치마다 저희가 원하는 범위에 로스팅 정도가 위치했는지 컬러트랙 체크를 합니다.뿐만 아니라, 로스팅을 통해 프릳츠를 표현하고자 했던 향미를 얻었는지 커핑과 추출을 통해 확인합니다.',
                              style: TextStyle(fontSize: 16, height: 1.5),
                            ),
                            SizedBox(
                              height: 54,
                            ),
                            Container(
                              padding: EdgeInsets.only(bottom: 10),
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '위치 안내',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: kMainColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on_outlined),
                                      Text(
                                        '마포역 3 출구 도보 10분',
                                        style: TextStyle(
                                          color: kTextDarkGaryColor,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Image.asset('assets/images/map.png'),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Container(
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.visibility,
                                              color: kMainColor,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              '사이트 방문',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: kMainColor),
                                            ),
                                          ],
                                        ),
                                      ),
                                      height: 35,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1.5, color: kMainColor),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Container(
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              FontAwesomeIcons.road,
                                              color: kMainColor,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              ' 길찾기',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: kMainColor),
                                            ),
                                          ],
                                        ),
                                      ),
                                      height: 35,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1.5, color: kMainColor),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 600,
                  child: Container(
                    width: 370,
                    height: 147,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 1,
                        color: Color(0xFF9098B1),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '대표 블랜딩',
                                style: TextStyle(
                                  letterSpacing: 1.0,
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF50555C),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  top: 5,
                                  bottom: 5,
                                ),
                                child: Text(
                                  '올드독',
                                  style: TextStyle(
                                    fontSize: 29,
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xFF50555C),
                                  ),
                                ),
                              ),
                              Text(
                                '달콤 쌉싸롬한 향미와  깊은 커피의 향을 동시에 내는 서울의 커피 취향을 한번에',
                                style: TextStyle(
                                  color: Color(0xFF9098B1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 18,
                          left: 122,
                          child: Text(
                            '9.8',
                            style: TextStyle(
                              fontSize: 47,
                              fontWeight: FontWeight.w900,
                              color: Color(0xFFFFC107),
                            ),
                          ),
                        ),
                      ],
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
