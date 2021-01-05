import 'package:justjam/utill/default.dart';
import 'package:flutter/material.dart';

class CoffingNoteRate extends StatefulWidget {
  static final String id = 'coffingNoteRate';

  @override
  _CoffingNoteRateState createState() => _CoffingNoteRateState();
}

class _CoffingNoteRateState extends State<CoffingNoteRate> {
  double _currentSliderValue = 5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: kTextDarkGaryColor,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          FlatButton(
            onPressed: () {},
            child: Container(
              child: Text(
                'Reset',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFEBBB9D),
                ),
              ),
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/coffingmainbg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                //TODO sectino 1 starts
                Container(
                  child: Column(
                    children: [
                      Text(
                        'RATING',
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFF555454),
                        ),
                      ),
                      SizedBox(
                        height: 21,
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
                          top: 26,
                          bottom: 21,
                        ),
                        child: Text(
                          '프리츠 커피 컴퍼니',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF555454),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                //TODO section1 done => section2 strats
                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          'Preference',
                          style: TextStyle(
                            fontSize: 22,
                            color: Color(0xFF625C5C),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              height: 58,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xFFEBBB9D),
                              ),
                              child: Center(
                                child: Text(
                                  'GOOD',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 26,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Container(
                              height: 58,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                border: Border.all(
                                  width: 1,
                                  color: Color(0xFFDFDFDF),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'BAD',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 26,
                                    color: Color(0xFF555454),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          'Cup note',
                          style: TextStyle(
                            fontSize: 22,
                            color: Color(0xFF625C5C),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xFFF9D9C5),
                                border: Border.all(
                                  width: 2,
                                  color: Color(0xFFEBBB9D),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Nutty',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFF555454),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                border: Border.all(
                                  width: 1,
                                  color: Color(0xFFDFDFDF),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Body',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Color(0xFF555454),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                border: Border.all(
                                  width: 1,
                                  color: Color(0xFFDFDFDF),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Acidity',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Color(0xFF555454),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                border: Border.all(
                                  width: 1,
                                  color: Color(0xFFDFDFDF),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Sweety',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Color(0xFF555454),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          'Minimal Rating 좋았던 맛의 강도',
                          style: TextStyle(
                            fontSize: 22,
                            color: Color(0xFF625C5C),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //TODO this is where slider starts
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 25.0,
                          ),
                          overlayColor: Colors.white,
                          trackHeight: 20,
                          inactiveTrackColor: Color(0xFFD6D8E7),
                          activeTickMarkColor: Colors.transparent,
                          inactiveTickMarkColor: Colors.transparent,
                          thumbColor: Colors.white,
                          activeTrackColor: Color(0xFFEBBB9D),
                        ),
                        child: Slider(
                          value: _currentSliderValue,
                          min: 0,
                          max: 100,
                          divisions: 10,
                          label: _currentSliderValue.round().toString(),
                          onChanged: (double value) {
                            setState(() {
                              _currentSliderValue = value;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        height: 77,
                      ),
                      Center(
                        child: Container(
                          width: 162,
                          height: 57,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xFFEBBB9D),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/images/airplane.png',
                              fit: BoxFit.cover,
                              width: 45,
                            ),
                          ),
                        ),
                      ),
                    ],
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
