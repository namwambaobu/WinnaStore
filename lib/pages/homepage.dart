import 'package:flutter/material.dart';
import 'package:winnastores/components/bottom_nav_bar.dart';
import 'package:winnastores/pages/profile_page.dart';
import 'package:winnastores/pages/setting_page.dart';
import 'package:winnastores/pages/shop_page.dart';

import 'cart_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //this selected index is to control the bottom nav bar
  int _selectedIndex = 0;
  //this method will update our selected index
  //when user taps on the bottom bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

//pages to display
  final List<Widget> _pages = [
    //shop page
    const ShopPage(),
    //cart page
    const CartPage(),
    //profile page
    const ProfilePage(),
    //settings page
    const SettingPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
