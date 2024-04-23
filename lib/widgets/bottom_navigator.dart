import 'package:flutter/material.dart';
import 'package:grocery_app/screen/cartpage.dart';
import 'package:grocery_app/screen/braand_view.dart';
import 'package:grocery_app/screen/homepage.dart';
import 'package:grocery_app/screen/profile_view.dart';
import 'package:grocery_app/screen/screen_page.dart';

const Color kPrimaryColor = Colors.blue;
const double kBottomNavigationBarItemSize = 24.0;

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomState();
}

class _BottomState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBodyWidget(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kPrimaryColor,
        backgroundColor: Colors.white,
        elevation: 0,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home, color: kPrimaryColor),
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.shopping_bag, color: kPrimaryColor),
            icon: Icon(Icons.shopping_basket_outlined),
            label: "Shopping",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.search, color: kPrimaryColor),
            icon: Icon(Icons.shop_2_outlined),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.favorite_border, color: kPrimaryColor),
            icon: Icon(Icons.favorite),
            label: "Details",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.person, color: kPrimaryColor),
            icon: Icon(Icons.person_4_outlined),
            label: "Profile",
          ),
        ],
      ),
    );
  }

  Widget _getBodyWidget(int index) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: _getPage(index),
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return const Homepage();
      case 1:
        return const ScreenPage();
      case 2:
        return const CartPage();
      case 3:
        return const DetailsView();
      case 4:
        return const ProfileView();
      default:
        return Container();
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
