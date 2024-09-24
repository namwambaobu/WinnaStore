import 'package:flutter/material.dart';
import 'package:winnastores/models/shoe.dart';

class Cart extends ChangeNotifier {
  //List of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: "Image1",
        price: "200",
        imagePath: 'assets/images/image1.png',
        description: "On fleek"),
    Shoe(
        name: "Image2",
        price: "200",
        imagePath: 'assets/images/image2.png',
        description: "On fleek"),
    Shoe(
        name: "Image3",
        price: "200",
        imagePath: 'assets/images/image3.png',
        description: "On fleek"),
    Shoe(
        name: "Image4",
        price: "200",
        imagePath: 'assets/images/image4.png',
        description: "On fleek"),
    Shoe(
        name: "Image5",
        price: "200",
        imagePath: 'assets/images/image5.png',
        description: "On fleek"),
    Shoe(
        name: "Image6",
        price: "200",
        imagePath: 'assets/images/image6.png',
        description: "On fleek"),
    Shoe(
        name: "Image7",
        price: "200",
        imagePath: 'assets/images/image7.png',
        description: "On fleek"),
    Shoe(
        name: "Image8",
        price: "200",
        imagePath: 'assets/images/image8.png',
        description: "On fleek"),
  ];
  //list of items in user cart
  List<Shoe> userCart = [];
  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
