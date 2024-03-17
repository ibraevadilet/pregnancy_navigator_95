// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pregnancy_navigator_95/main.dart';
import 'package:pregnancy_navigator_95/screens/go_buy_screen.dart';
import 'package:pregnancy_navigator_95/screens/nav_bar_screen.dart';
import 'package:pregnancy_navigator_95/widgets/service_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AppInfoScreen extends StatefulWidget {
  const AppInfoScreen({super.key});

  @override
  State<AppInfoScreen> createState() => _AppInfoScreenState();
}

class _AppInfoScreenState extends State<AppInfoScreen> {
  int currantPage = 0;
  List<PageViewModel> pages = [
    PageViewModel(
      image: 'assets/images/app_info_1.png',
      title: 'Monitor your pregnancy',
      subTitle:
          'Read information about the trimesters of pregnancy and your baby',
    ),
    PageViewModel(
      image: 'assets/images/app_info_2.png',
      title: 'Follow a pregnancy diet',
      subTitle: 'Learn more about proper nutrition and be a healthy mommy',
    ),
    PageViewModel(
      image: 'assets/images/app_info_3.png',
      title: 'Find answers to your questions',
      subTitle:
          'Read the answers to all your questions about pregnancy and be informed',
    ),
  ];

  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color(0xff009DFF).withOpacity(0.35),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: controller,
                    itemCount: pages.length,
                    itemBuilder: (context, index) {
                      final model = pages[index];
                      return Column(
                        children: [
                          Flexible(
                            child: Image.asset(
                              model.image,
                            ),
                          ),
                          const SizedBox(height: 24),
                          Text(
                            model.title,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 40,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              color: Color(0xffFF7A00),
                            ),
                          ),
                          const SizedBox(height: 24),
                          Text(
                            model.subTitle,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      );
                    },
                    onPageChanged: (value) {
                      currantPage = value;
                    },
                  ),
                ),
                const SizedBox(height: 24),
                SmoothPageIndicator(
                  controller: controller, // PageController
                  count: 3,
                  effect: const WormEffect(
                    activeDotColor: Color(0xffFF7A00),
                    dotWidth: 10,
                    dotHeight: 10,
                    dotColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 24),
                CupertinoButton(
                  color: Colors.transparent,
                  padding: EdgeInsets.zero,
                  onPressed: () async {
                    final isBuy = prefs.getBool('isBuyy') ?? false;

                    if (currantPage == 2) {
                      await prefs.setBool('first', true);
                      if (!isBuy) {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const GoBuyScreen(),
                          ),
                          (protected) => false,
                        );
                      } else {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NavBarScreen(),
                          ),
                          (protected) => false,
                        );
                      }
                    } else {
                      controller.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.all(14),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: const Color(0xff009DFF),
                    ),
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 16.h,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const ServiceButtons(),
                const SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PageViewModel {
  final String image;
  final String title;
  final String subTitle;
  PageViewModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
}
