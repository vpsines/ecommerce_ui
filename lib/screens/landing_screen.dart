import 'package:ecommerce_ui/screens/account_screen.dart';
import 'package:ecommerce_ui/screens/cart_screen.dart';
import 'package:ecommerce_ui/screens/home_screen.dart';
import 'package:ecommerce_ui/screens/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
    int selectedIndex =0;

    List<Widget> pages =[
      HomeScreen(),
      CartScreen(),
      WishlistScreen(),
      AccountScreen()
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.1)
            )
          ]
        ),
        child:  SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: GNav(
              
              tabs:const [
                GButton(icon: LineIcons.home,text: 'Home',),
                GButton(icon: LineIcons.shoppingBag,text: 'Cart',),
                GButton(icon: LineIcons.heart,text: 'Wishlist',),
                GButton(icon: LineIcons.user,text: 'Account',),
              ],
              selectedIndex: selectedIndex,
              onTabChange: (int index){
                  setState(() {
                    selectedIndex = index;
                  });
              },
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.green[100]!,
              gap: 8,
              activeColor: Colors.white,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.redAccent,
              color: Colors.black,
              ),
          ),
        ),
      ),
    );
  }
}