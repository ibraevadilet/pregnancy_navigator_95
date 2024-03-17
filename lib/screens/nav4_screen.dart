import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pedometer/pedometer.dart';
import 'package:pregnancy_navigator_95/helpers/app_all_images.dart';
import 'package:pregnancy_navigator_95/helpers/ex_model_data.dart';
import 'package:pregnancy_navigator_95/main.dart';
import 'package:pregnancy_navigator_95/screens/go_buy_screen.dart';
import 'package:pregnancy_navigator_95/screens/nav5_screen.dart';
import 'package:pregnancy_navigator_95/screens/scratch_screen.dart';

class Nav4Screen extends StatefulWidget {
  const Nav4Screen({super.key});

  @override
  State<Nav4Screen> createState() => _Nav4ScreenState();
}

class _Nav4ScreenState extends State<Nav4Screen> {
  late bool isPremium;
  late int water;
  late int steps;

  @override
  void initState() {
    isPremium = prefs.getBool('isBuy') ?? false;
    water = prefs.getInt('water') ?? 0;
    steps = prefs.getInt('steps') ?? 0;
    initPlatformState();

    super.initState();
  }

  late Stream<StepCount> _stepCountStream;
  void onStepCount(StepCount event) {
    setState(() {
      steps += event.steps;
      prefs.setInt('steps', steps);
    });
  }

  void initPlatformState() {
    _stepCountStream = Pedometer.stepCountStream;
    _stepCountStream.listen(onStepCount);

    if (!mounted) return;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ScreenTitleWidget(title: 'Pregnancy stretches'),
        Text(
          'Health counter',
          style: TextStyle(
            fontSize: 18.h,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 12.h),
        Row(
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      if (!isPremium) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const GoBuyScreen(isClose: true),
                          ),
                        );
                      } else {
                        showAdaptiveDialog(
                          barrierDismissible: true,
                          context: context,
                          builder: (context) => CupertinoAlertDialog(
                            title: const Text(
                              "Drink water",
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            content: const Padding(
                              padding: EdgeInsets.only(top: 22),
                              child: Text(
                                "Did you drink a glass of\nwater?",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            actions: <Widget>[
                              CupertinoDialogAction(
                                child: const Text(
                                  "Cancel",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              CupertinoDialogAction(
                                child: const Text(
                                  "Add",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff009DFF),
                                  ),
                                ),
                                onPressed: () async {
                                  prefs.setInt('water', water + 1);
                                  water++;
                                  Navigator.pop(context);
                                  setState(() {});
                                },
                              )
                            ],
                          ),
                        );
                      }
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xff009DFF).withOpacity(0.25),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Drink water',
                            style: TextStyle(
                              fontSize: 16.h,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Image.asset(
                            AppAllImages.glass,
                            height: 56,
                          ),
                          SizedBox(height: 12.h),
                          Text(
                            '$water/5',
                            style: TextStyle(
                              fontSize: 16.h,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Glass',
                            style: TextStyle(
                              fontSize: 12.h,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.4),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (!isPremium)
                    Image.asset(
                      AppAllImages.premiumIcon,
                      height: 32.h,
                    ),
                ],
              ),
            ),
            SizedBox(width: 27.w),
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xff009DFF).withOpacity(0.25),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Walking',
                          style: TextStyle(
                            fontSize: 16.h,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 12.h),
                        Image.asset(
                          AppAllImages.walk,
                          height: 56,
                        ),
                        SizedBox(height: 12.h),
                        Text(
                          steps.toString(),
                          style: TextStyle(
                            fontSize: 16.h,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Steps',
                          style: TextStyle(
                            fontSize: 12.h,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (!isPremium)
                    Image.asset(
                      AppAllImages.premiumIcon,
                      height: 32.h,
                    ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 24.h),
        Text(
          'Daily exercises',
          style: TextStyle(
            fontSize: 18.h,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 16.h),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.only(bottom: 20),
            itemCount: exList.length,
            separatorBuilder: (context, index) => SizedBox(height: 16.h),
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                if (!isPremium) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GoBuyScreen(isClose: true),
                    ),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScratchScreen(model: exList[index]),
                    ),
                  );
                }
              },
              child: Stack(
                children: [
                  Image.asset(AppAllImages.exBg),
                  Positioned(
                    top: 24,
                    left: 16,
                    child: Text(
                      exList[index].ex,
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 27,
                    left: 16,
                    child: Text(
                      exList[index].title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    bottom: 0,
                    child: Image.asset(exList[index].icon),
                  ),
                  if (!isPremium)
                    Positioned(
                      top: 12,
                      right: 12,
                      child: Image.asset(
                        AppAllImages.premiumIcon,
                        height: 32.h,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
