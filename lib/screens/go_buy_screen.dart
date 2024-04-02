// ignore_for_file: use_build_context_synchronously

import 'package:apphud/apphud.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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

                    final apphudPaywalls = await Apphud.paywalls();
                    print(apphudPaywalls);
                    await Apphud.purchase(
                      product: apphudPaywalls?.paywalls.first.products?.first,
                    ).whenComplete(
                      () async {
                        if (await Apphud.hasPremiumAccess() ||
                            await Apphud.hasActiveSubscription()) {
                          final hasPremiumAccess =
                              await Apphud.hasPremiumAccess();
                          final hasActiveSubscription =
                              await Apphud.hasActiveSubscription();
                          if (hasPremiumAccess || hasActiveSubscription) {
                            await prefs.setBool('isBuy', true);
                            showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  CupertinoAlertDialog(
                                title: const Text('Success!'),
                                content: const Text(
                                    'Your purchase has been restored!'),
                                actions: [
                                  CupertinoDialogAction(
                                    isDefaultAction: true,
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => const NavBarScreen(),
                                        ),
                                        (route) => false,
                                      );
                                    },
                                    child: const Text('Ok'),
                                  ),
                                ],
                              ),
                            );
                          } else {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  CupertinoAlertDialog(
                                title: const Text('Restore purchase'),
                                content: const Text(
                                    'Your purchase is not found. Write to support: https://forms.gle/DxVmvU8os5dQGSVB7'),
                                actions: [
                                  CupertinoDialogAction(
                                    isDefaultAction: true,
                                    onPressed: () =>
                                        {Navigator.of(context).pop()},
                                    child: const Text('Ok'),
                                  ),
                                ],
                              ),
                            );
                          }
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const NavBarScreen(),
                            ),
                            (route) => false,
                          );
                        }
                      },
                    );
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
