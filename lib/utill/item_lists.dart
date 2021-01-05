import 'package:flutter/material.dart';

class ItemLists {
  final String image, title, place, price;
  ItemLists({
    this.image,
    this.title,
    this.place,
    this.price,
  });
}

List<ItemLists> items = [
  ItemLists(
    title: "그루스터디카페",
    price: "2000",
    place: "월곡역",
    image: "assets/images/item1.jpg",
  ),
  ItemLists(
    title: "델리에 파티",
    price: "4000",
    place: "건대입구역",
    image: "assets/images/item2.jpeg",
  ),
  ItemLists(
    title: "위워크 성수역점",
    price: "3500",
    place: "성수역",
    image: "assets/images/item3.jpg",
  ),
  ItemLists(
    title: "팝스터디카페",
    price: '2500',
    place: "수유역",
    image: "assets/images/item4.jpg",
  ),
];

class ItemRightLists {
  final String image, title, place, price;
  ItemRightLists({
    this.image,
    this.title,
    this.place,
    this.price,
  });
}

List<ItemRightLists> rightItems = [
  ItemRightLists(
    title: "경희대 본관(3층)",
    price: "무료입장",
    place: "경희대역",
    image: "assets/images/rightitem.jpg",
  ),
  ItemRightLists(
    title: "가천대 새롬관(1층)",
    price: "무료입장",
    place: "가천대역",
    image: "assets/images/rightitem2.jpg",
  ),
  ItemRightLists(
    title: "위워크 강남(1층 로비)",
    price: "회원입장",
    place: "강남역",
    image: "assets/images/rightitem3.jpg",
  ),
  ItemRightLists(
    title: "국민대 IT관(로비)",
    price: "무료입장",
    place: "길음역",
    image: "assets/images/rightitme4.jpg",
  ),
];

class PopupLists {
  final String image;
  PopupLists({
    this.image,
  });
}

List<PopupLists> popupLists = [
  PopupLists(
    image: "assets/images/popup1.png",
  ),
  PopupLists(
    image: "assets/images/popup2.png",
  ),
];
