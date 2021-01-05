import 'package:justjam/home.dart';
import 'package:justjam/provider/NormalPaceSearch.dart';
import 'package:justjam/provider/PlaceSearch.dart';
import 'package:justjam/provider/google_sign_in.dart';
import 'package:justjam/screens/coffingnote/coffingnote_iteminfo_screen.dart';
import 'package:justjam/screens/coffingnote/coffingnote_main_screen.dart';
import 'package:justjam/screens/coffingnote/coffingnote_rate_screen.dart';
import 'package:justjam/screens/coupon/coupon_lists_screen.dart';
import 'package:justjam/screens/home__screen.dart';
import 'package:justjam/screens/login/login_active_screen.dart';
import 'package:justjam/screens/login/login_mainpage_screen.dart';
import 'package:justjam/screens/searchitem/normal_place_detail_screen.dart';
import 'package:justjam/screens/searchitem/search_detail_screen.dart';
import 'package:justjam/screens/searchitem/searchitem_final_screen.dart';
import 'package:justjam/screens/searchitem/searchitem_reserve_scree.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:justjam/utill/default.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List _imageList = ["asset"];
  bool pressed = true;
  Switch selectedSwitch;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: PlaceSearch()),
        ChangeNotifierProvider.value(value: NormalPlaceSearch()),
        ChangeNotifierProvider.value(value: GoogleSignInProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primaryColor: kMainColor),
        home: Scaffold(
          // appBar: PreferredSize(
          //   preferredSize: Size(double.infinity, -5),
          //   child: AppBar(
          //     title: Column(
          //       children: [
          //         SizedBox(
          //           height: 5,
          //         ),
          //       ],
          //     ),
          //     backgroundColor: Colors.white,
          //     elevation: 0,
          //   ),
          // ),
          body: LoginMain(),
        ),
        routes: {
          NormalPlaceSearchDetailScreen.id: (context) =>
              NormalPlaceSearchDetailScreen(),
          HomeScreen.id: (context) => HomeScreen(),
          SearchDetailScreen.id: (context) => SearchDetailScreen(),
          SearchItemReserved.id: (context) => SearchItemReserved(),
          SearchReservedDone.id: (context) => SearchReservedDone(),
          CouponLists.id: (context) => CouponLists(),
          CoffingNoteMain.id: (context) => CoffingNoteMain(),
          CoffingNoteItemInfo.id: (context) => CoffingNoteItemInfo(),
          CoffingNoteRate.id: (context) => CoffingNoteRate(),
          LoginMain.id: (context) => LoginMain(),
          LoginActivePage.id: (context) => LoginActivePage(),
        },
      ),
    );
  }
}
