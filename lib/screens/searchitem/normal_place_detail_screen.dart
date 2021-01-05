import 'package:justjam/main.dart';
import 'package:justjam/model/place.dart';
import 'package:justjam/provider/NormalPaceSearch.dart';
import 'package:justjam/screens/searchitem/searchitem_reserve_scree.dart';
import 'package:flutter/material.dart';
import 'package:justjam/utill/default.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:justjam/provider/PlaceSearch.dart';
import 'package:provider/provider.dart';

//TODO 아이템 상세 페이지, 공간 예약으로 이동하는 페이지

class NormalPlaceSearchDetailScreen extends StatelessWidget {
  // Place(this.name, this.rating, this.reviewCount, this.location, this.price,
  //     this.openHour, this.type, this.description);
  static final String id = 'noramlplacesearch';
  NormalPlaceSearchDetailScreen({
    Key key,
    this.value,
  }) : super(key: key);
  final int value;
  @override
  Widget build(BuildContext context) {
    final normalPlaceSearch =
        Provider.of<NormalPlaceSearch>(context, listen: false);
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(FontAwesomeIcons.heart),
          ),
        ],
        backgroundColor: Color(0x00000000),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(normalPlaceSearch.selectedPlace.image),
                  fit: BoxFit.cover,
                ),
              ),
            ), //picture
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 0, 10),
              child: Text(
                normalPlaceSearch.selectedPlace.title,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
              ),
            ), //item_title
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  Icon(
                    FontAwesomeIcons.solidStar,
                    color: Colors.amber,
                    size: 18,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '${normalPlaceSearch.selectedPlace.rate}',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '(199)',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade400,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '후기 ${normalPlaceSearch.selectedPlace.rateCount}개',
                    style: TextStyle(
                      fontSize: 18,
                      color: kMainColor,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      Text(
                        '${normalPlaceSearch.selectedPlace.place}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text.rich(
                        TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: '${normalPlaceSearch.selectedPlace.price}',
                            style: TextStyle(
                              color: kMainColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          TextSpan(
                            text: '원/시간',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Container(
                      child: Text.rich(
                        TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: '운영시간',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                '  ${normalPlaceSearch.selectedPlace.openHour}간',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ]),
                      ),
                    ),
                  ),
                  Container(
                    child: Text.rich(
                      TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: "업종형태",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: normalPlaceSearch.selectedPlace.placeType,
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              height: 85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  width: 1,
                  color: Colors.grey,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.people_alt_rounded,
                              size: 24,
                              color: kTheconColor,
                            ),
                            Text(
                              '최대 10인 동반 가능',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(
                          '(다인 좌석은 조기 마감될 수 있습니다.)',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 85,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: kTheconColor,
                      ),
                      child: Center(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            '상세사진',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //TODO '공간소개' Start (Sectino2)
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      '공간소개',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: kMainColor),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Text(
                      normalPlaceSearch.selectedPlace.aboutPlace,
                      style: TextStyle(height: 1.6, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    child: Text(
                      '시설안내',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: kMainColor),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      primary: false,
                      shrinkWrap: true,
                      itemCount: abouts.length,
                      itemBuilder: (context, index) => PlaceAnnounce(
                        about: abouts[index],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //TODO 시얼 안내 끝 , (section3 Starts)
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: Container(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.phone,
                                color: kMainColor,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '전화하기',
                                style:
                                    TextStyle(fontSize: 18, color: kMainColor),
                              ),
                            ],
                          ),
                        ),
                        height: 35,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.5, color: kMainColor),
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: kMainColor,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '길찾기',
                                style:
                                    TextStyle(fontSize: 18, color: kMainColor),
                              ),
                            ],
                          ),
                        ),
                        height: 35,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.5, color: kMainColor),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Image.asset('assets/images/spacetip.png'),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, SearchItemReserved.id);
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

class PlaceAnnounce extends StatelessWidget {
  final PlaceAbout about;
  const PlaceAnnounce({
    Key key,
    this.about,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(color: klightGrayBlueColor, width: 1))),
      child: Text.rich(
        TextSpan(children: <TextSpan>[
          TextSpan(
            text: about.number,
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
              text: about.discript,
              style: TextStyle(
                fontSize: 18,
              )),
        ]),
      ),
    );
  }
}

class PlaceAbout {
  final String discript, number;
  final int aim;
  PlaceAbout({this.aim, this.number, this.discript});
}

List<PlaceAbout> abouts = [
  PlaceAbout(number: '1', discript: '  10인용 테비을 &의자'),
  PlaceAbout(number: '2', discript: '  43인치 TV & HDMI 케이블선'),
  PlaceAbout(number: '3', discript: '  화장실 3개(남녀분리 / 남녀공용'),
  PlaceAbout(number: '4', discript: '  wifi, 에어콘'),
  PlaceAbout(number: '5', discript: ' Coffee bar & 거실'),
];

// Container(
// child: Column(
// children: [
// Container(
// child: Text.rich(
// TextSpan(children: <TextSpan>[
// TextSpan(text: '1'),
// ]),
// ),
// ),
// ],
// ),
// ),
