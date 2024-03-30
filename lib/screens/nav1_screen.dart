import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pregnancy_navigator_95/helpers/tracker_model_data.dart';
import 'package:pregnancy_navigator_95/screens/nav5_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class Nav1Screen extends StatefulWidget {
  const Nav1Screen({super.key});

  @override
  State<Nav1Screen> createState() => _Nav1ScreenState();
}

class _Nav1ScreenState extends State<Nav1Screen> with TickerProviderStateMixin {
  List<String> tabTexts = List.generate(40, (index) {
    String suffix;
    int number = index + 1;

    if (number % 10 == 1 && number % 100 != 11) {
      suffix = 'st';
    } else if (number % 10 == 2 && number % 100 != 12) {
      suffix = 'nd';
    } else if (number % 10 == 3 && number % 100 != 13) {
      suffix = 'rd';
    } else {
      suffix = 'th';
    }

    return '$number$suffix';
  });

  late TabController tabController;
  int currantIndex = 0;
  @override
  void initState() {
    super.initState();

    tabController = TabController(
      initialIndex: 0,
      length: 40,
      vsync: this,
    )..addListener(() {
        currantIndex = tabController.index;
        setState(() {});
      });
    alertDialog(context);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: ScreenTitleWidget(title: 'Baby tracker'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'Current week of pregnancy',
            style: TextStyle(
              fontSize: 18.h,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(height: 18),
        TabBar(
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          onTap: (value) {
            setState(() {
              currantIndex = value;
            });
          },
          controller: tabController,
          indicatorColor: Colors.transparent,
          dividerColor: Colors.transparent,
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          tabs: tabTexts
              .map<Widget>((e) => Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currantIndex == tabTexts.indexOf(e)
                          ? const Color(0xffFF7A00)
                          : Colors.transparent,
                    ),
                    child: Column(
                      children: [
                        Text(
                          e,
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            color: currantIndex == tabTexts.indexOf(e)
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                        Text(
                          'WEEK',
                          style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            color: currantIndex == tabTexts.indexOf(e)
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ))
              .toList(),
        ),
        SizedBox(height: 20.h),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: trackerData
                .map<Widget>(
                  (e) => TrackerInfoWidget(model: e),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}

class TrackerInfoWidget extends StatefulWidget {
  const TrackerInfoWidget({
    super.key,
    required this.model,
  });

  final TrackerModel model;

  @override
  State<TrackerInfoWidget> createState() => _TrackerInfoWidgetState();
}

class _TrackerInfoWidgetState extends State<TrackerInfoWidget> {
  bool isOpen = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(24),
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                offset: const Offset(0, 3),
                blurRadius: 5,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your baby',
                style: TextStyle(
                  fontSize: 24.h,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 12.h),
              Center(
                child: CachedNetworkImage(
                  imageUrl: widget.model.image,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator.adaptive(),
                  height: 160.h,
                ),
              ),
              SizedBox(height: 12.h),
              Center(
                child: Text(
                  widget.model.fruit,
                  style: TextStyle(
                    fontSize: 16.h,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Length',
                        style: TextStyle(
                          fontSize: 18.h,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        widget.model.length,
                        style: TextStyle(
                          fontSize: 24.h,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Weight',
                        style: TextStyle(
                          fontSize: 18.h,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        widget.model.weight,
                        style: TextStyle(
                          fontSize: 24.h,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 24.h),
        ExpansionTile(
          shape: const Border(),
          childrenPadding: EdgeInsets.zero,
          tilePadding: EdgeInsets.zero,
          trailing: const SizedBox.shrink(),
          onExpansionChanged: (value) {
            isOpen = value;
            setState(() {});
          },
          title: Row(
            children: [
              Expanded(
                child: Text(
                  widget.model.trimester,
                  style: TextStyle(
                    fontSize: 18.h,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 15,
                backgroundColor: const Color(0xff009DFF),
                child: Icon(
                  isOpen
                      ? Icons.keyboard_arrow_up_outlined
                      : Icons.keyboard_arrow_down_sharp,
                  color: Colors.white,
                  size: 30.h,
                ),
              ),
            ],
          ),
          children: [
            Text(
              widget.model.trimesterDescription,
              style: TextStyle(
                fontSize: 14.h,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                color: Colors.black,
                height: 1.5.h,
              ),
            ),
          ],
        ),
        SizedBox(height: 12.h),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xff009DFF),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.model.week,
                style: TextStyle(
                  fontSize: 16.h,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                widget.model.weekDescription,
                style: TextStyle(
                  fontSize: 12.h,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        if (widget.model.link != null) SizedBox(height: 16.h),
        if (widget.model.link != null)
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xffFF7A00),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Link',
                  style: TextStyle(
                    fontSize: 16.h,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 6.h),
                InkWell(
                  onTap: _launchUrl,
                  child: Text(
                    widget.model.link!,
                    style: TextStyle(
                      fontSize: 13.h,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

Future<void> _launchUrl() async {
  final Uri url = Uri.parse(
      'https://kidshealth.org/en/parents/pregnancy-calendar-intro.html#:~:text=A%20pregnancy%20is%20divided%20into,the%20end%20of%20the%20pregnancy');
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

Future<void> alertDialog(BuildContext context) async {
  await Future.delayed(
    const Duration(seconds: 2),
  );
  showDialog(
    context: context,
    builder: (context) {
      return CupertinoAlertDialog(
        title: const Text(
          'Info',
          style: TextStyle(
            fontSize: 17,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        content: const Text(
          'Our app is informative with the purpose of entertainment and education',
          style: TextStyle(
            fontSize: 13,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        actions: [
          CupertinoDialogAction(
            child: const Text(
              'Ok',
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
        ],
      );
    },
  );
}
