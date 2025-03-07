import 'package:flutter/material.dart';

class Product {
  String name;
  var price;
  Product(this.name,this.price);
}

class Shoppingcart{

}

void main() {
  List<Product> products = [
    Product("Phone",10),
    Product("Laptop",20),
    Product("Tab",30),
  ];
for(int i=0;i<=3;i++){
  //add items in cart'
}
//view cart

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
  title: 'Flutter Demo',
  theme: ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  ),
  // Use Work as the home widget
  );
  }
  }