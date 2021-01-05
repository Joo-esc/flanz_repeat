import 'package:justjam/model/place.dart';
import 'package:flutter/material.dart';

class PlaceSearch with ChangeNotifier {
  // Place(this.name, this.rating, this.reviewCount, this.location, this.price,
  //     this.openHour, this.type, this.description);

  List<Place> _placeList = [
    Place(
      image: "assets/images/item1.jpg",
      name: '그루스터디카페',
      rating: 9.1,
      reviewCount: 32,
      location: '월곡역 3번 출구',
      price: 2000,
      openHour: 24,
      type: '스터디카페/독서실',
      description: '<그루스터디카페>\n그루스터디카에 관한 내용입니다. 앤프로 키보드를 홍보합시다',
      aim: 0,
    ),
    Place(
      image: "assets/images/item2.jpg",
      name: '패스트 파이브 강남',
      rating: 9.2,
      reviewCount: 32,
      location: '월곡역 3번 출구',
      price: 3000,
      openHour: 24,
      type: '스터디카페/독서실',
      description: '그루스터디카페\n그루스터디카페그루스터디카페그루스터디카페그루스터디카페그루스터디카페',
      aim: 1,
    ),
    Place(
        image: "assets/images/item3.jpg",
        name: '아이엠스터디카',
        rating: 9.2,
        reviewCount: 32,
        location: '월곡역 3번 출구',
        price: 4000,
        openHour: 24,
        type: '스터디카페/독서실',
        aim: 2,
        description: '그루스터디카페\n그루스터디카페그루스터디카페그루스터디카페그루스터디카페그루스터디카페'),
    Place(
        image: "assets/images/item4.jpg",
        name: '앤프로투',
        rating: 9.2,
        reviewCount: 32,
        location: '월곡역 3번 출구',
        price: 5000,
        openHour: 24,
        type: '스터디카페/독서실',
        aim: 3,
        description: '그루스터디카페\n그루스터디카페그루스터디카페그루스터디카페그루스터디카페그루스터디카페'),
    Place(
        image: "assets/images/item3.jpg",
        name: '그루스터디카페',
        rating: 9.2,
        reviewCount: 32,
        location: '월곡역 3번 출구',
        price: 6000,
        openHour: 24,
        type: '스터디카페/독서실',
        aim: 4,
        description: '그루스터디카페\n그루스터디카페그루스터디카페그루스터디카페그루스터디카페그루스터디카페')
  ];
  Place _selectedPlace;

  // http => server 요청

  List<Place> get placeList => _placeList;

  set placeList(List<Place> value) {
    _placeList = value;
    notifyListeners();
  }

  Place get selectedPlace => _selectedPlace;

  set selectedPlace(Place value) {
    _selectedPlace = value;
    notifyListeners();
  }
}
