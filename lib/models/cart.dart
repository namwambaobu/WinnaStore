import 'package:flutter/material.dart';
import 'package:winnastores/models/shoe.dart';

class Cart extends ChangeNotifier {
  //List of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: "Comfy Sketchers",
        price: "80",
        imagePath: 'assets/images/image1.png',
        description: "Comfy Running shoes with a strong and reliable sole"),
    Shoe(
        name: "Nike **",
        price: "400",
        imagePath: 'assets/images/image2.png',
        description: "Limited Editions "),
    Shoe(
        name: "Comfy Boots",
        price: "180",
        imagePath: 'assets/images/image3.png',
        description: "Feet massagers, So reliable"),
    Shoe(
        name: "Adidas Samba",
        price: "200",
        imagePath: 'assets/images/image4.png',
        description: "Stylish and very reliable regardless of the ocassion"),
    Shoe(
        name: "Simple Sketchers",
        price: "80",
        imagePath: 'assets/images/image5.png',
        description: "Simple but still stylish"),
    Shoe(
        name: "Yeexy Slides",
        price: "150",
        imagePath: 'assets/images/image6.png',
        description: "Ye made it happen"),
    Shoe(
        name: "Chunky Boots",
        price: "200",
        imagePath: 'assets/images/image7.png',
        description:
            "Need that confidence booster with a height lift, look no further"),
    Shoe(
        name: "Indoor Slides",
        price: "200",
        imagePath: 'assets/images/image8.png',
        description: "The are Comfy as ...🤣"),
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
