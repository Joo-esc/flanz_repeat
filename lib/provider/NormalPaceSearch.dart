//this is the provider and we wiil get the type from data,

import 'package:justjam/model/normalPlace.dart';
import 'package:flutter/cupertino.dart';

class NormalPlaceSearch with ChangeNotifier {
  List<NormalPlace> _normalPlaceLists = [
    NormalPlace(
        image: 'assets/images/rightitem.jpg',
        title: '경희대학교',
        place: '가천대학교 2번출구',
        price: '무료입장',
        placeType: '대학교',
        aboutPlace: '어쩌구 저쩌구',
        rate: 9.2,
        aim: 0,
        rateCount: 45,
        openHour: 24),
    NormalPlace(
        aim: 1,
        image: 'assets/images/rightitem2.jpg',
        title: '가천대학교 새롬',
        place: '가천대학교 2번출구',
        price: '무료입장',
        placeType: '대학교',
        aboutPlace: '어쩌구 저쩌구',
        rate: 8.2,
        rateCount: 45,
        openHour: 24),
    NormalPlace(
        aim: 2,
        image: 'assets/images/rightitem3.jpg',
        title: '한피스 미아점',
        place: '가천대학교 2번출구',
        price: '무료입장',
        placeType: '대학교',
        aboutPlace: '어쩌구 저쩌구',
        rate: 9,
        rateCount: 45,
        openHour: 24),
    NormalPlace(
        aim: 3,
        image: 'assets/images/rightitme4.jpg',
        title: '국민대학교 공학관',
        place: '가천대학교 2번출구',
        price: '무료입장',
        placeType: '대학교',
        aboutPlace: '어쩌구 저쩌구',
        rate: 9,
        rateCount: 45,
        openHour: 24),
  ];

  NormalPlace _selectedPlace;

  NormalPlace get selectedPlace => _selectedPlace;

  set selectedPlace(NormalPlace value) {
    _selectedPlace = value;
    notifyListeners();
  }

  List<NormalPlace> get normalPlaceLists => _normalPlaceLists;

  set normalPlaceLists(List<NormalPlace> value) {
    _normalPlaceLists = value;
    notifyListeners();
  }
}
