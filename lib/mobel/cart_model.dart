import 'package:flutter/material.dart';

class CatModels extends ChangeNotifier {
  final List<List<dynamic>> _shopItems = [
    [
      "Fresh Fruit And Vegetables", // Item name
      "400", // Price
      "images/fruit_vegetables.png", // Image path
      Colors.green // Color
    ],
    [
      "Cooking Oil And Ghee",
      "580",
      "images/cooking_oil_ghee.png",
      Colors.yellow
    ],
    ["Meat And Chicken", "900", "images/meat_chicken.png", Colors.brown],
    ["Bakery And Snacks", "200", "images/bakery_snacks.png", Colors.teal],
    ["Dairy And Eggs", "20", "images/dairy_eggs.png", Colors.blue],
    ["Beverages", "70", "images/beverages.png", Colors.purple]
  ];

  final List<List<dynamic>> _cartItems = [];

  List<List<dynamic>> get shopItems => _shopItems;

  List<List<dynamic>> get cartItems => _cartItems;

  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  double calculateTotalPrice() {
    double totalPrice = 0;
    for (var item in _cartItems) {
      totalPrice += double.parse(item[1].toString());
    }
    return totalPrice;
  }

  void setCartItems(List<List> cartItems) {
    _cartItems.clear();
    _cartItems.addAll(cartItems);
    notifyListeners();
  }
}
