import 'package:justjam/provider/NormalPaceSearch.dart';
import 'package:justjam/provider/PlaceSearch.dart';
import 'package:justjam/screens/searchitem/normal_place_detail_screen.dart';
import 'package:justjam/screens/searchitem/search_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:justjam/utill/default.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

//TODO 상품검색 메인 페이지

int hey;

class SearchItemActive extends StatefulWidget {
  @override
  _SearchItemActiveState createState() => _SearchItemActiveState();
}

class _SearchItemActiveState extends State<SearchItemActive> {
  @override
  Widget build(BuildContext context) {
    final placeSearch = Provider.of<PlaceSearch>(context, listen: false);
    final normalPlaceSearch =
        Provider.of<NormalPlaceSearch>(context, listen: false);
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios),
                  Expanded(
                    child: SizedBox(
                      height: 42,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1, color: klightGrayBlueColor),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1, color: klightGrayBlueColor),
                          ),
                          hintText: '지역,지하철역으로 검색하세요',
                          hintStyle: TextStyle(color: kSearchTextColor),
                          suffixIcon: Icon(
                            FontAwesomeIcons.timesCircle,
                            color: kSearchDarkTextColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
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
                              '플랜즈 공간',
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              '일반공간',
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1,
                            color: Color(0xFFDADADA),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: klightGrayBlueColor,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Icon(
                                  Icons.calendar_today_outlined,
                                  size: 28,
                                ),
                              ),
                              Text(
                                '10월 17일',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_drop_down_circle_sharp,
                            color: Colors.grey.shade500,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 50,
                      color: ksizedBoxColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(
                            TextSpan(children: <TextSpan>[
                              TextSpan(
                                text: '12',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: '검색결과',
                              ),
                            ]),
                          ),
                          Row(
                            children: [
                              Icon(Icons.keyboard_arrow_down_rounded),
                              Text('가까운 거리 순서')
                            ],
                          ),
                        ],
                      ),
                    ),
                    //TODO item Lists starts  (section 2)
                    //SearchItemLists()
                    Container(
                      height: 1000,
                      width: double.infinity,
                      child: TabBarView(
                        children: [
                          Container(
                            child: GridView.builder(
                              padding: EdgeInsets.zero,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                                      crossAxisCount: 1,
                                      mainAxisSpacing: 10,
                                      height: 309),
                              itemCount: placeSearch.placeList.length,
                              itemBuilder: (context, index) {
                                final place = placeSearch.placeList[index];
                                return SearchItemLists(
                                  image: place.image,
                                  name: place.name,
                                  rating: place.rating,
                                  reviewCount: place.reviewCount,
                                  location: place.location,
                                  aim: place.aim,
                                  price: place.price,
                                  onTap: () {
                                    placeSearch.selectedPlace =
                                        placeSearch.placeList[index];
                                    Navigator.pushNamed(
                                        context, SearchDetailScreen.id);
                                  },
                                );
                              },
                            ),
                          ),
                          Container(
                            child: GridView.builder(
                              padding: EdgeInsets.zero,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 1,
                                      mainAxisSpacing: 10,
                                      childAspectRatio: 1.4),
                              itemCount:
                                  normalPlaceSearch.normalPlaceLists.length,
                              itemBuilder: (context, index) {
                                final normal =
                                    normalPlaceSearch.normalPlaceLists[index];
                                return SearchRightItemLists(
                                  image: normal.image,
                                  name: normal.title,
                                  rating: normal.rate,
                                  reviewCount: normal.rateCount,
                                  location: normal.place,
                                  aim: normal.aim,
                                  price: normal.price,
                                  onTap: () {
                                    normalPlaceSearch.selectedPlace =
                                        normalPlaceSearch
                                            .normalPlaceLists[index];
                                    Navigator.pushNamed(context,
                                        NormalPlaceSearchDetailScreen.id);
                                  },
                                );
                              },
                            ),
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
      ),
    );
  }
}

class SearchRightItemLists extends StatelessWidget {
  const SearchRightItemLists({
    Key key,
    this.image,
    this.name,
    this.location,
    this.price,
    this.rating,
    this.reviewCount,
    this.aim,
    this.onTap,
  }) : super(key: key);
  final String image, name, location, price;
  final int reviewCount, aim;
  final double rating;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(image),
                          repeat: ImageRepeat.repeat,
                          fit: BoxFit.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: klightGrayBlueColor,
                          ),
                          Text(location),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow.shade700,
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                child: Text(
                                  '$rating',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: kTextDarkGaryColor,
                                  ),
                                ),
                              ),
                              Text(
                                '$reviewCount',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: kTextlighGaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: price,
                                  style: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                    color: kMainColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        padding: EdgeInsets.only(top: 10, bottom: 0),
      ),
    );
  }
}

class SearchItemLists extends StatelessWidget {
  const SearchItemLists({
    Key key,
    this.image,
    this.name,
    this.location,
    this.price,
    this.rating,
    this.reviewCount,
    this.aim,
    this.onTap,
  }) : super(key: key);
  final String image, name, location;
  final int price, reviewCount, aim;
  final double rating;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(image),
                          repeat: ImageRepeat.repeat,
                          fit: BoxFit.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: klightGrayBlueColor,
                          ),
                          Text(location),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow.shade700,
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                child: Text(
                                  '$rating',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: kTextDarkGaryColor,
                                  ),
                                ),
                              ),
                              Text(
                                '$reviewCount',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: kTextlighGaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: '$price',
                                  style: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                    color: kMainColor,
                                  ),
                                ),
                                TextSpan(
                                  text: '원/시간',
                                  style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        padding: EdgeInsets.only(top: 10, bottom: 0),
      ),
    );
  }
}
