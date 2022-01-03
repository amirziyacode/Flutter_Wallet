import 'package:flutter/cupertino.dart';

class Cards{
  late List<Color> color;
  late String name;
  late String icon;
  late String  money;
  late String  bank;


  Cards({
    required this.name,
    required this.color,
    required this.money,
    required this.icon,
    required this.bank

});

}


List<Cards> cardinfo = [
  Cards(name: "Alireza", color: const [Color(0xFFE96443),Color(0xFF904E95)],money: "5634.0",icon: "images/amazon.png", bank: 'images/mastercard.png'),
  Cards(name: "Flutter", color: const [Color(0xFF00D2FF),Color(0xFF928DAB)],money: "2644.0", icon:"images/google-logo.png", bank: 'images/neo-cryptocurrency.png'),
  Cards(name: "Amirziy", color: const [Color(0xFFFFC371),Color(0xFFFF5F6D)],money: "7684.0", icon: "images/mac-os--v2.png", bank: 'images/mastercard.png'),
];