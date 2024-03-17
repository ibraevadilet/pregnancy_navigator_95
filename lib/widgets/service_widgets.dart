import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pregnancy_navigator_95/helpers/asghg.dart';
import 'package:pregnancy_navigator_95/widgets/web_view_fitess_zone.dart';

class ServiceButtons extends StatelessWidget {
  const ServiceButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 10),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ServiceWebNavigator(
                  title: 'Term of use',
                  url:
                      'https://docs.google.com/document/d/1guJJtdYLRnQQFE5GphEYXk3u6TU4Z38lbvQprVttHmE/edit?usp=sharing',
                ),
              ),
            );
          },
          child: Text(
            'Term of Service',
            style: TextStyle(
              fontSize: 13.h,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              color: Colors.black.withOpacity(0.4),
              decoration: TextDecoration.underline,
              decorationColor: Colors.black.withOpacity(0.4),
            ),
          ),
        ),
        const Spacer(),
        Container(
          width: 1,
          height: 10,
          color: Colors.black.withOpacity(0.4),
        ),
        const Spacer(),
        InkWell(
          onTap: () => dsafasfasfasfasasf(context),
          child: Text(
            'Restore',
            style: TextStyle(
              fontSize: 13.h,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              color: Colors.black.withOpacity(0.4),
              decoration: TextDecoration.underline,
              decorationColor: Colors.black.withOpacity(0.4),
            ),
          ),
        ),
        const Spacer(),
        Container(
          width: 1,
          height: 10,
          color: Colors.black.withOpacity(0.4),
        ),
        const Spacer(),
        InkWell(
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
          child: Text(
            'Privacy Policy',
            style: TextStyle(
              fontSize: 13.h,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              color: Colors.black.withOpacity(0.4),
              decoration: TextDecoration.underline,
              decorationColor: Colors.black.withOpacity(0.4),
            ),
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
