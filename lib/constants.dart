import 'package:flutter/cupertino.dart';

const contgreen = Color(0xffCDE9D4);
const contgrey = Color(0xffeeeeee);
const contmagen = Color(0xff9B99F5);

const barblack = Color(0xff1C1C25);
const darkgrey = Color(0xffcccccc);
const mainblack = Color(0xff000000);
const mainwhite = Color(0xffffffff);

const double height = 70;

const h1 = TextStyle(fontSize: 26, fontWeight: FontWeight.bold);
const h2 = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
final h3 = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.normal,
  color: mainblack.withOpacity(0.5),
);
const b1 = TextStyle(fontSize: 16, fontWeight: FontWeight.normal);

final products = [
  Product('chair', 120, 'assets/armchair.png'),
  Product('chair', 95, 'assets/gaming-chair.png'),
  Product('chair', 65, 'assets/office-chair.png'),
  Product('chair', 25, 'assets/chair.png'),
  Product('chair', 150, 'assets/sofa.png'),
  Product('chair', 50, 'assets/table.png'),
];

class Product {
  final String title;
  final double price;
  final String image;

  Product(this.title, this.price, this.image);
}

List colors = [
  contgreen,
  contmagen,
  contgrey,
];
