import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pregnancy_navigator_95/main.dart';
import 'package:pregnancy_navigator_95/screens/go_buy_screen.dart';
import 'package:pregnancy_navigator_95/widgets/web_view_fitess_zone.dart';
import 'package:share_plus/share_plus.dart';

class Nav5Screen extends StatefulWidget {
  const Nav5Screen({super.key});

  @override
  State<Nav5Screen> createState() => _Nav5ScreenState();
}

class _Nav5ScreenState extends State<Nav5Screen> {
  late bool isPremium;

  @override
  void initState() {
    isPremium = prefs.getBool('isBuy') ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ScreenTitleWidget(title: 'Settings'),
        if (!isPremium)
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffFF7A00),
                  Color(0xffFFC38C),
                ],
              ),
            ),
            child: Column(
              children: [
                Text(
                  'Unlock health counter and stretching exercises',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.h,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  'Train your body for an easy and happy pregnancy',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12.h,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20.h),
                CupertinoButton(
                  color: Colors.transparent,
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GoBuyScreen(isClose: true),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(14),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xff009DFF),
                    ),
                    child: Text(
                      'Buy premium',
                      style: TextStyle(
                        fontSize: 16.h,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        SizedBox(height: 24.h),
        SettingsContainers(
          title: 'Terms of Use',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ServiceWebNavigator(
                  title: 'Terms of Use',
                  url:
                      'https://docs.google.com/document/d/1guJJtdYLRnQQFE5GphEYXk3u6TU4Z38lbvQprVttHmE/edit?usp=sharing',
                ),
              ),
            );
          },
        ),
        SettingsContainers(
          title: 'Pricacy Policy',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ServiceWebNavigator(
                  title: 'Privacy Policy',
                  url:
                      'https://docs.google.com/document/d/1nxq6vFzU9XXOcqL4RQF8rcRwiw6mFAMFM1_721iaw74/edit?usp=sharing',
                ),
              ),
            );
          },
        ),
        SettingsContainers(
          title: 'Share App',
          onTap: () => Share.share(
              'https://apps.apple.com/us/app/bump-buddy-your-pregnancy/id6479559146'),
        ),
        SettingsContainers(
          title: 'Support',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ServiceWebNavigator(
                  title: 'Support',
                  url: 'https://forms.gle/DxVmvU8os5dQGSVB7',
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class SettingsContainers extends StatelessWidget {
  const SettingsContainers({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xff009DFF),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16.h,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ScreenTitleWidget extends StatelessWidget {
  const ScreenTitleWidget({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 28,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
