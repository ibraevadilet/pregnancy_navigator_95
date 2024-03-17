import 'package:flutter/material.dart';
import 'package:pregnancy_navigator_95/helpers/app_all_images.dart';
import 'package:pregnancy_navigator_95/screens/nav1_screen.dart';
import 'package:pregnancy_navigator_95/screens/nav2_screen.dart';
import 'package:pregnancy_navigator_95/screens/nav3_screen.dart';
import 'package:pregnancy_navigator_95/screens/nav4_screen.dart';
import 'package:pregnancy_navigator_95/screens/nav5_screen.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key, this.index = 0});
  final int index;

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  late int currantIndex = widget.index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: currantIndex == 0
            ? botttomPages[currantIndex]
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: botttomPages[currantIndex],
              ),
      ),
      extendBody: true,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 15,
        selectedFontSize: 15,
        currentIndex: currantIndex,
        onTap: (indexFrom) async {
          setState(() {
            currantIndex = indexFrom;
          });
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color(0xffAFAFAF),
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Image.asset(
              AppAllImages.navBar1,
              width: 24,
            ),
            activeIcon: Image.asset(
              AppAllImages.navBar1,
              color: const Color(0xff009DFF),
              width: 24,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Image.asset(
              AppAllImages.navBar2,
              width: 24,
            ),
            activeIcon: Image.asset(
              AppAllImages.navBar2,
              color: const Color(0xff009DFF),
              width: 24,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Image.asset(
              AppAllImages.navBar3,
              width: 24,
            ),
            activeIcon: Image.asset(
              AppAllImages.navBar3,
              color: const Color(0xff009DFF),
              width: 24,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Image.asset(
              AppAllImages.navBar4,
              width: 24,
            ),
            activeIcon: Image.asset(
              AppAllImages.navBar4,
              color: const Color(0xff009DFF),
              width: 24,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Image.asset(
              AppAllImages.navBar5,
              width: 24,
            ),
            activeIcon: Image.asset(
              AppAllImages.navBar5,
              color: const Color(0xff009DFF),
              width: 24,
            ),
          ),
        ],
      ),
    );
  }

  final List<Widget> botttomPages = [
    const Nav1Screen(),
    const Nav2Screen(),
    const Nav3Screen(),
    const Nav4Screen(),
    const Nav5Screen(),
  ];
}
