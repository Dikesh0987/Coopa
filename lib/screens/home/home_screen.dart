import 'package:coopa/screens/cart/cart_screen.dart';
import 'package:coopa/screens/home/components/body.dart';
import 'package:coopa/screens/profile/profile_screen.dart';
import 'package:coopa/screens/tranding/tranding_screen.dart';
import 'package:flutter/material.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _currentIndex = 0;

  final PageIndex = [Body(), TrandingScreen(), CartScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Image.asset(
          "assets/logo/logo.png",
          width: 100,
          height: 50,
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                Icons.notifications_on_outlined,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: PageIndex[_currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _floatingBottomBar(),
    );
  }

  Container _floatingBottomBar() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      height: 50,
      child: CustomNavigationBar(
        isFloating: false,
        borderRadius: const Radius.circular(40),
        selectedColor: Colors.blue.shade200,
        unSelectedColor: Color.fromARGB(255, 155, 146, 146),
        backgroundColor: Colors.white,
        strokeColor: Colors.white,
        scaleFactor: 0.1,
        iconSize: 30,
        items: [
          CustomNavigationBarItem(
              icon: _currentIndex == 0
                  ? Icon(Icons.home)
                  : Icon(Icons.home_outlined)),
          CustomNavigationBarItem(
              icon: _currentIndex == 1
                  ? Icon(Icons.fiber_new)
                  : Icon(Icons.fiber_new)),
          CustomNavigationBarItem(
              icon: _currentIndex == 2
                  ? Icon(Icons.shopping_cart_rounded)
                  : Icon(Icons.shopping_cart_outlined)),
          CustomNavigationBarItem(
              icon: _currentIndex == 3
                  ? Icon(Icons.account_box)
                  : Icon(Icons.account_box_outlined)),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
