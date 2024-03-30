import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pregnancy_navigator_95/helpers/app_all_images.dart';
import 'package:pregnancy_navigator_95/screens/nav5_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class Nav2Screen extends StatefulWidget {
  const Nav2Screen({super.key});

  @override
  State<Nav2Screen> createState() => _Nav2ScreenState();
}

class _Nav2ScreenState extends State<Nav2Screen> {
  @override
  void initState() {
    alertDialog(context);
    super.initState();
  }

  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ScreenTitleWidget(title: 'Diet for pregnant'),
        Row(
          children: [
            DietContainer(
              icon: AppAllImages.diet1,
              isActive: index == 1,
              onTap: () {
                setState(() {
                  index = 1;
                });
              },
            ),
            SizedBox(width: 12.w),
            DietContainer(
              icon: AppAllImages.diet2,
              isActive: index == 2,
              onTap: () {
                setState(() {
                  index = 2;
                });
              },
            ),
            SizedBox(width: 12.w),
            DietContainer(
              icon: AppAllImages.diet3,
              isActive: index == 3,
              onTap: () {
                setState(() {
                  index = 3;
                });
              },
            ),
          ],
        ),
        SizedBox(height: 24.h),
        Expanded(
          child: index == 1
              ? const Index1Diet()
              : index == 2
                  ? const Index2Diet()
                  : const Index3Diet(),
        ),
      ],
    );
  }
}

class Index1Diet extends StatelessWidget {
  const Index1Diet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Text(
          '1) Setting up protein nutrition',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 24.h),
        const Text(
          'When it comes to a diet for an expectant mother, we remember that the basis of all basics is protein. It plays the most important role in the intrauterine development of the baby, it helps the formation of its internal organs. That is why it is important for a woman to include fermented milk products, meat and fish dishes in her menu.',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            color: Colors.black,
            height: 1.5,
          ),
        ),
        SizedBox(height: 12.h),
        const Divider(
          color: Color(0xff009DFF),
          thickness: 2,
        ),
        SizedBox(height: 12.h),
        const Text(
          '2) We eat often (five meals a day) and in small portions',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 24.h),
        const Text(
          'The diet during pregnancy is virtually no different from the eating routine of people leading a healthy lifestyle. There is no need to invent anything new here: you should eat without overeating, making 5-6 snacks a day. It is necessary to adhere to regularity in eating.',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            color: Colors.black,
            height: 1.5,
          ),
        ),
        SizedBox(height: 12.h),
        const Divider(
          color: Color(0xff009DFF),
          thickness: 2,
        ),
        SizedBox(height: 12.h),
        const Text(
          '3) We steam, stew and bake the products',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 24.h),
        const Text(
          'These cooking methods are preferred due to their gentle nature. More vitamins and nutrients remain in products prepared in this way than, for example, when cooking in hot oil. When choosing recipes for pregnant women, this point must be taken into account.',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            color: Colors.black,
            height: 1.5,
          ),
        ),
        SizedBox(height: 12.h),
        const Divider(
          color: Color(0xff009DFF),
          thickness: 2,
        ),
        SizedBox(height: 12.h),
        const Text(
          '4) Limiting the amount of carbohydrates',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 24.h),
        const Text(
          'While monitoring your diet during pregnancy, you will hear more than once from a specialist that it’s time to stop eating sweets and rich foods. Such comments are quite justified, because flour and confectionery products provide almost no benefit to the body; they provoke a rapid increase in body weight. ',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            color: Colors.black,
            height: 1.5,
          ),
        ),
        SizedBox(height: 12.h),
        const Divider(
          color: Color(0xff009DFF),
          thickness: 2,
        ),
        SizedBox(height: 12.h),
        const Text(
          '5) We drink at least one and a half to two liters of fluid per day',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 24.h),
        const Text(
          'Liquid is an essential component of the diet for pregnant women. The recommended volume is at least 1.5 liters per day.',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            color: Colors.black,
            height: 1.5,
          ),
        ),
        SizedBox(height: 33.h),
        const Divider(
          color: Color(0xff009DFF),
          thickness: 2,
        ),
        SizedBox(height: 25.h),
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
                onTap: _launchUrlOne,
                child: Text(
                  'https://health.gov/myhealthfinder/pregnancy/nutrition-and-physical-activity/eat-healthy-during-pregnancy-quick-tips',
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
        SizedBox(height: 20.h),
      ],
    );
  }
}

class Index2Diet extends StatelessWidget {
  const Index2Diet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Text(
          'Choosing healthy products',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 12.h),
        const Text(
          'By giving preference to healthy eating, a woman works for her future. Don’t doubt it, then you will definitely see the result of your labors. Studies show that expectant mothers who adhere to the menu for pregnant women in the 1st trimester and subsequently suffer less from swelling, heartburn, and nausea during pregnancy.',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            color: Colors.black,
            height: 1.5,
          ),
        ),
        SizedBox(height: 19.h),
        const Divider(
          color: Color(0xff009DFF),
          thickness: 2,
        ),
        SizedBox(height: 24.h),
        const Text(
          'Healthy foods for pregnant women include:',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 12.h),
        const Text(
          'meat dishes, offal, sea fish and seafood (supplies protein, phosphorus, zinc, iodine, magnesium, vitamin D); vegetables, fruits and herbs are an essential vitamin complex of natural origin in the diet for pregnant women, nuts containing vital substances - omega-3, selenium, phytic acid, magnesium;',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            color: Colors.black,
            height: 1.5,
          ),
        ),
        SizedBox(height: 19.h),
        const Divider(
          color: Color(0xff009DFF),
          thickness: 2,
        ),
        SizedBox(height: 24.h),
        const Text(
          'Avoiding harmful foods for pregnant women',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 12.h),
        const Text(
          'Firstly, this is something that is not recommended for all people who want to maintain health and beauty. This includes alcoholic drinks, fast food, snacks (crackers, chips, salty snacks), and tonic drinks in large quantities (coffee, strong tea). there is no place for fatty and spicy foods. ',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            color: Colors.black,
            height: 1.5,
          ),
        ),
        SizedBox(height: 19.h),
        const Divider(
          color: Color(0xff009DFF),
          thickness: 2,
        ),
        SizedBox(height: 24.h),
        const Text(
          'Making a sample menu for a pregnant woman',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 12.h),
        const Text(
          'So, we have already determined that the diet should be varied and balanced. The daily calorie intake, which is provided in the diet for pregnant women, must be distributed over at least five meals. In this case, the food will be well absorbed and will benefit the body.',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            color: Colors.black,
            height: 1.5,
          ),
        ),
        SizedBox(height: 37.h),
        const Divider(
          color: Color(0xff009DFF),
          thickness: 2,
        ),
        SizedBox(height: 25.h),
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
                onTap: _launchUrlOne,
                child: Text(
                  'https://health.gov/myhealthfinder/pregnancy/nutrition-and-physical-activity/eat-healthy-during-pregnancy-quick-tips',
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
        SizedBox(height: 20.h),
      ],
    );
  }
}

class Index3Diet extends StatelessWidget {
  const Index3Diet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Text(
          'Breakfast options',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 12.h),
        const Text(
          'Oatmeal, yogurt, tea Light salad, bread and butter, tea Egg omelette with rye bread, freshly squeezed juice Wheat porridge with milk, a piece of cheese, tea',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            color: Colors.black,
            height: 1.5,
          ),
        ),
        SizedBox(height: 19.h),
        const Divider(
          color: Color(0xff009DFF),
          thickness: 2,
        ),
        SizedBox(height: 24.h),
        const Text(
          'Brunch options',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 12.h),
        const Text(
          'Apple, cheese Dried fruits Fruit salad Orange or pear',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            color: Colors.black,
            height: 1.5,
          ),
        ),
        SizedBox(height: 19.h),
        const Divider(
          color: Color(0xff009DFF),
          thickness: 2,
        ),
        SizedBox(height: 24.h),
        const Text(
          'Lunch options',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 12.h),
        const Text(
          'Chicken or fish soup for the first course, beef with a side dish for the second course, fruit drink or compote Pasta, beef cutlets, rosehip broth Fish fillet, green beans, green beans, compote',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            color: Colors.black,
            height: 1.5,
          ),
        ),
        SizedBox(height: 19.h),
        const Divider(
          color: Color(0xff009DFF),
          thickness: 2,
        ),
        SizedBox(height: 24.h),
        const Text(
          'Afternoon snack options',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 12.h),
        const Text(
          'A glass of kefir Cottage cheese with fresh berries Banana and drinking yogurt Ryazhenka or kefir',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            color: Colors.black,
            height: 1.5,
          ),
        ),
        SizedBox(height: 19.h),
        const Divider(
          color: Color(0xff009DFF),
          thickness: 2,
        ),
        SizedBox(height: 24.h),
        const Text(
          'Dinner options',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 12.h),
        const Text(
          'Cereal porridge, vegetable salad, cottage cheese casserole, tea Chicken breast with stewed vegetables, salad, tea Turkey with boiled rice, a glass of kefir Cauliflower, stewed beef, tea',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            color: Colors.black,
            height: 1.5,
          ),
        ),
        SizedBox(height: 37.h),
        const Divider(
          color: Color(0xff009DFF),
          thickness: 2,
        ),
        SizedBox(height: 25.h),
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
                onTap: _launchUrlOne,
                child: Text(
                  'https://health.gov/myhealthfinder/pregnancy/nutrition-and-physical-activity/eat-healthy-during-pregnancy-quick-tips',
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
        SizedBox(height: 20.h),
      ],
    );
  }
}

class DietContainer extends StatelessWidget {
  const DietContainer({
    super.key,
    required this.icon,
    required this.isActive,
    required this.onTap,
  });

  final String icon;
  final bool isActive;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            border: isActive
                ? Border.all(
                    color: const Color(0xffFF7A00),
                    width: 3,
                  )
                : null,
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
          child: Image.asset(icon),
        ),
      ),
    );
  }
}

Future<void> _launchUrlOne() async {
  final Uri url = Uri.parse(
      'https://health.gov/myhealthfinder/pregnancy/nutrition-and-physical-activity/eat-healthy-during-pregnancy-quick-tips');
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
