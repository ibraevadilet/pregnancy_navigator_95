// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pregnancy_navigator_95/helpers/afagsd.dart';
import 'package:pregnancy_navigator_95/helpers/app_all_images.dart';
import 'package:pregnancy_navigator_95/main.dart';
import 'package:pregnancy_navigator_95/screens/nav_bar_screen.dart';
import 'package:pregnancy_navigator_95/widgets/service_widgets.dart';

class GoBuyScreen extends StatefulWidget {
  const GoBuyScreen({super.key, this.isClose = false});
  final bool isClose;

  @override
  State<GoBuyScreen> createState() => _GoBuyScreenState();
}

class _GoBuyScreenState extends State<GoBuyScreen> {
  Future<void> afafasfafafafsasfgadgfh() async {
    final learAdaPaywall =
        await Dfsdfasdfaafas().jhkgjfhdgsbfng('placement_95');
    if (learAdaPaywall == null) return;
    final learAdaProducts =
        await Dfsdfasdfaafas().hgfhdgsbfngmh(learAdaPaywall);
    if (learAdaProducts == null) return;
    if (kDebugMode) log('learAda');

    await Dfsdfasdfaafas().khgjfhdgsdhfjgh(learAdaProducts.first);
  }

  bool asfaf = false;
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
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        if (widget.isClose) {
                          Navigator.pop(context);
                        } else {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NavBarScreen(),
                            ),
                            (protected) => false,
                          );
                        }
                      },
                      child: const Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const Text(
                  'Premium',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    color: Color(0xffFF7A00),
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    AppAllImages.premium,
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
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
                          fontSize: 18.h,
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
                          fontSize: 14.h,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                CupertinoButton(
                  color: Colors.transparent,
                  padding: EdgeInsets.zero,
                  onPressed: () async {
                    setState(() {
                      asfaf = true;
                    });
                    await afafasfafafafsasfgadgfh();
                    final hasPremiumStatusSmartTrader =
                        await Dfsdfasdfaafas().liukytjrhgsdv();
                    if (hasPremiumStatusSmartTrader) {
                      await prefs.setBool('isBuy', true);
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const NavBarScreen(),
                        ),
                        (route) => false,
                      );
                    }
                    setState(() {
                      asfaf = false;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(14),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: const Color(0xff009DFF),
                    ),
                    child: asfaf
                        ? const CircularProgressIndicator.adaptive()
                        : Text(
                            'Buy for 0.99\$',
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
