import 'package:justjam/utill/default.dart';
import 'package:flutter/material.dart';

//TODO 음료 소개 페이지

class BeverageMain extends StatelessWidget {
  int inzex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '메뉴',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Color(0xFFF8F7F5),
        elevation: 0,
      ),
      backgroundColor: Color(0XFFF8F7F5),
      body: Container(
        child: Column(
          children: <Widget>[
            DefaultTabController(
              initialIndex: 0,
              length: 2,
              child: Column(
                children: [
                  Container(
                    child: TabBar(
                      labelStyle: TextStyle(
                        fontSize: 20,
                      ),
                      unselectedLabelColor: kMainColor,
                      labelColor: Colors.white,
                      indicatorColor: kMainColor,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        color: kMainColor,
                      ),
                      indicatorSize: TabBarIndicatorSize.label,
                      tabs: [
                        Container(
                          child: Center(
                            child: Text('PLANZ'),
                          ),
                          width: double.infinity,
                        ),
                        Container(
                          child: Center(
                            child: Text('ROASTERY'),
                          ),
                          width: double.infinity,
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26),
                      color: Colors.white,
                    ),
                    height: 80,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Coffee',
                      style: TextStyle(
                          fontSize: 28,
                          color: kMainColor,
                          fontWeight: FontWeight.bold),
                    ),
                    padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    height: 590,
                    child: TabBarView(
                      children: [
                        Column(
                          children: [
                            Container(
                              child: GridView.builder(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  childAspectRatio: 0.72,
                                ),
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: 3,
                                itemBuilder: (context, index) => BeverageCoffee(
                                  items: coffeeItem[index],
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Drink',
                                style: TextStyle(
                                    fontSize: 28,
                                    color: kMainColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                            ),
                            GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                childAspectRatio: 0.79,
                              ),
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: 5,
                              itemBuilder: (context, index) => BeverageLists(
                                items: drinkItem[index],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Image.asset('assets/images/roastery1.png'),
                                SizedBox(
                                  height: 40,
                                ),
                                Image.asset('assets/images/roastery.png'),
                                SizedBox(
                                  height: 40,
                                ),
                                Image.asset('assets/images/roastery3.png'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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

class BeverageLists extends StatelessWidget {
  const BeverageLists({
    Key key,
    this.items,
  }) : super(key: key);
  final drinkLists items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 150,
          height: 160,
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    child: Image.asset(
                      items.image,
                      fit: BoxFit.contain,
                      height: 70,
                    ),
                    // padding: EdgeInsets.symmetric(horizontal: 30),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    items.title,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 4),
                ),
                Container(
                  child: Text(
                    items.subtitle,
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 4),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class drinkLists {
  final String image, title, subtitle;
  drinkLists({this.image, this.title, this.subtitle});
}

List<drinkLists> drinkItem = [
  drinkLists(
    image: 'assets/images/drink4.png',
    title: '허니유자',
    subtitle: 'Honey & yuja',
  ),
  drinkLists(
    image: 'assets/images/drink5.png',
    title: '핑크 자몽',
    subtitle: 'Pink grapefruit',
  ),
  drinkLists(
    image: 'assets/images/drink6.png',
    title: '스트로베리',
    subtitle: 'Strawberry tea',
  ),
  drinkLists(
    image: 'assets/images/drink7.png',
    title: '라임 민트',
    subtitle: 'Lime & mint',
  ),
  drinkLists(
    image: 'assets/images/drink8.png',
    title: '스트로베리 라떼',
    subtitle: 'Strawberry Latte',
  ),
];

class CoffeeLists {
  CoffeeLists({this.image, this.title, this.subtitle});
  String image, title, subtitle;
}

List<CoffeeLists> coffeeItem = [
  CoffeeLists(
    image: 'assets/images/drink1.png',
    title: '브라드커피',
    subtitle: 'Brewed Coffee',
  ),
  CoffeeLists(
    image: 'assets/images/drink2.png',
    title: '카페 라떼',
    subtitle: 'Cafe latte',
  ),
  CoffeeLists(
    image: 'assets/images/drink3.png',
    title: '바닐라 라떼',
    subtitle: 'Vanila cafe latte',
  ),
];

class BeverageCoffee extends StatelessWidget {
  const BeverageCoffee({
    Key key,
    this.items,
  }) : super(key: key);
  final CoffeeLists items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 150,
          height: 160,
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    child: Image.asset(
                      items.image,
                      fit: BoxFit.contain,
                      height: 70,
                    ),
                    // padding: EdgeInsets.symmetric(horizontal: 30),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    items.title,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 4),
                ),
                Container(
                  child: Text(
                    items.subtitle,
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 4),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
