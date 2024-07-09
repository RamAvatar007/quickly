
import 'package:flutter/material.dart';
import 'package:quickly_design_one/constant/app_color.dart';
import 'package:quickly_design_one/screens/screen/all_bottom_bar_tab_screens/account_screen/account_screen.dart';
import 'package:quickly_design_one/screens/screen/all_bottom_bar_tab_screens/cart_screen/cart_screen.dart';
import 'package:quickly_design_one/screens/screen/all_bottom_bar_tab_screens/home_screen/home_screen.dart';
import 'package:quickly_design_one/screens/screen/all_bottom_bar_tab_screens/offers_screen/offer_screen.dart';
import 'package:quickly_design_one/screens/screen/all_bottom_bar_tab_screens/order_screen/order_screen.dart';

class BottomBarTabScreen extends StatefulWidget {
  const BottomBarTabScreen({super.key});

  @override
  State<BottomBarTabScreen> createState() => _BottomBarTabScreenState();
}

class _BottomBarTabScreenState extends State<BottomBarTabScreen> {
  int currentScreen = 2;
  List<Widget> screenList = [
    const CartScreen(),
    const OfferScreen(),
    const HomeScreen(),
    const OrderScreen(),
    const AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[currentScreen],
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          currentIndex: currentScreen,
          onTap: (value) {
            setState(() {
              currentScreen = value;
            });
          },
          selectedItemColor: blackColor.withOpacity(.8),
          unselectedItemColor: black27Color.withOpacity(.5),
          showUnselectedLabels: true,
          elevation: 10,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          selectedIconTheme: const IconThemeData(size: 30),
          unselectedIconTheme: const IconThemeData(size: 30),
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          type: BottomNavigationBarType.fixed,
          backgroundColor: secondaryColor,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.card_travel_outlined),
              label: 'Cart',
              activeIcon: Icon(Icons.card_travel_rounded),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.offline_share_outlined),
              label: 'Offers',
              activeIcon: Icon(Icons.offline_share),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              activeIcon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.offline_bolt_rounded),
              label: 'Orders',
              activeIcon: Icon(Icons.offline_bolt),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_3_outlined),
              label: 'Account',
              activeIcon: Icon(Icons.person_3_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
