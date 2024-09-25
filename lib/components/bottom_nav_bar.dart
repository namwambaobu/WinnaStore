import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25.0),
      child: GNav(
          color: Colors.brown[400],
          activeColor: Colors.brown[900],
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.white,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 8,
          gap: 8,
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: 'Cart',
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
            ),
            GButton(
              icon: Icons.settings,
              text: 'Settings',
            )
          ]),
    );
  }
}
