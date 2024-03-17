import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pregnancy_navigator_95/helpers/app_all_images.dart';
import 'package:pregnancy_navigator_95/screens/nav5_screen.dart';

class Nav3Screen extends StatelessWidget {
  const Nav3Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ScreenTitleWidget(title: 'FAQ'),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            children: const [
              FagWidget(
                title: 'What methods of preparation for childbirth are there?',
                icon: AppAllImages.fag1,
                desc:
                    'Now almost every woman has access to a variety of pregnancy courses to prepare herself for childbirth. In megacities, classes are held in business centers, fitness clubs, maternity hospitals and multidisciplinary medical institutions. Even if a pregnant woman lives in a small town, she can obtain the necessary knowledge through online training or by attending antenatal clinic courses at a clinic.',
              ),
              FagWidget(
                title: 'When should you start preparing for childbirth?',
                icon: AppAllImages.fag2,
                desc:
                    'Babies born from the 37th to the 42nd week of pregnancy are considered to be born at term. But a woman should be ready to go to the maternity hospital without additional risks from the 32nd to 34th week. According to statistics, 60-70% of premature births occur in the 34-37th week of pregnancy. If we take all babies, from 5 to 10% are born prematurely - the percentage varies depending on the region and country.',
              ),
              FagWidget(
                title: 'In what week of pregnancy should you register and why?',
                icon: AppAllImages.fag3,
                desc:
                    'You need to register before the 12th week of pregnancy in order to do all the necessary tests, including genetic tests, and ultrasonoscopy. Based on this information, the doctor can promptly detect and better help in case of various complications, as well as more accurately calculate the expected due date.',
              ),
              FagWidget(
                title: 'How many times during pregnancy visit gynecologist? ',
                icon: AppAllImages.fag4,
                desc:
                    'According to the state program, visits to the gynecologist during pregnancy are provided at least 6 times, but in each case the doctor draws up an individual plan for monitoring the pregnant woman, and it often happens that additional studies or a visit are needed. You need to go to the doctor in order to promptly detect complications that, if not eliminated, can be dangerous for both the woman and the fetus. ',
              ),
              FagWidget(
                title: 'What does the gynecologist do in the monthly check-up?',
                icon: AppAllImages.fag5,
                desc:
                    'During a monthly visit, the gynecologist discusses the course of pregnancy with the pregnant woman, listens to complaints, explains test results, answers questions, gives recommendations on regimen and nutrition at each stage of pregnancy, examines and evaluates the general state of health (anemia, high blood pressure, edema), weighs the woman and assesses weight gain, measures the abdominal diameter.',
              ),
              FagWidget(
                title: 'Is spotting normal during pregnancy? ',
                icon: AppAllImages.fag6,
                desc:
                    "Many women complain of spotting during pregnancy. In most cases, everything ends well, but discharge cannot be considered normal, because it often indicates serious problems, so you should always consult a doctor. Without a doctor's examination, it is impossible to say whether bleeding is dangerous or not.",
              ),
              FagWidget(
                title: 'For what symptoms should contact your gynecologist ?',
                icon: AppAllImages.fag7,
                desc:
                    'You should consult a doctor in case of sudden, sharp, severe pain anywhere in the abdomen that does not go away, in case of nagging, sharp pain in the lower abdomen that intensifies, or bleeding. Consultation with a doctor is also necessary if there are serious symptoms not related to pregnancy, for example, prolonged, repeated vomiting, high temperature (above 38.5), etc.',
              ),
              FagWidget(
                title: 'Do all pregnant women need supplements?',
                icon: AppAllImages.fag8,
                desc:
                    'All pregnant women need to take folic acid before the 12th week of pregnancy, because it is responsible for the development of the fetal nervous system. The need to consume other vitamins is determined by the gynecologist depending on the time of year, diet and general condition of the woman. Iron-containing preparations should be taken if tests indicate anemia.',
              ),
              FagWidget(
                title: 'Will I harm my baby by attending pregnancy classes?',
                icon: AppAllImages.fag9,
                desc:
                    'Gymnastics for pregnant women cannot cause any harm to the baby - on the contrary. If there is no risk of miscarriage and the doctor allows gymnastics, it should definitely be done. Gymnastics helps prepare for childbirth, reduces back pain, which often occurs during pregnancy, improves overall well-being and gives additional energy.',
              ),
              FagWidget(
                title: 'What does listening to fetal heart sounds mean? ',
                icon: AppAllImages.fag10,
                desc:
                    "From about the 12th week, fetal heart sounds can be heard through the mother's abdomen using the so-called Doppler. Previously, this was done with a stethoscope. In this way, the doctor hears how fast the fetal heart activity is and whether it is rhythmic. This check is carried out at every visit. At the end of pregnancy, fetal heart sounds can be recorded on paper tape - this is called cardiotocography (KTG).",
              ),
              FagWidget(
                title: 'What should I do if I am afraid to give birth?',
                icon: AppAllImages.fag11,
                desc:
                    "You need to understand why you are afraid of childbirth. The best advice from a professional will help here - talk to your doctor, a psychologist, attend preparatory classes. We are always afraid of the unknown, and knowledge helps us overcome fears. If you are afraid of pain, talk to your doctor about the possibility of an epidural. If you are afraid of being alone, look for opportunities to birth with your chosen doctor, midwife, or “spiritual midwife.” ",
              ),
              FagWidget(
                title: 'How to prepare for an easier birth?',
                icon: AppAllImages.fag12,
                desc:
                    'These days, there are several ways to reduce the pain of childbirth and make the birth experience easier if necessary. Although expectant mothers have this option in mind, most still want to fully experience the birth of their baby. It may seem that natural and easy childbirth do not go hand in hand, but this experience largely depends on the woman herself, on her attitude towards childbirth and understanding of how it happens. ',
              ),
              FagWidget(
                title: 'How can your partner help make labor easier?',
                icon: AppAllImages.fag13,
                desc:
                    "A man's role is to be supportive - both emotionally and physically, especially if the woman has a poor relationship with her mother, from whom she should draw positive experiences and encouragement. In this case, it is advisable to have a partner perform this role. The father is not physically involved in the pregnancy, but his presence nearby is extremely important for the woman. For a woman, the feeling that she is being cared very important.",
              ),
              FagWidget(
                title: 'How to avoid the formation of stretch marks?',
                icon: AppAllImages.fag14,
                desc:
                    "During pregnancy, the contours of the female body rapidly change, it becomes fuller, and in some places connective tissue ruptures are possible. Subcutaneous tissue tears, or stretch marks, occur from excessive tension on the skin. If the skin is not elastic enough and there is not enough collagen in it, then in the places that respond most quickly to weight changes we can observe the formation of stretch marks.",
              ),
            ],
          ),
        )
      ],
    );
  }
}

class FagWidget extends StatelessWidget {
  const FagWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.desc,
  });

  final String title;
  final String icon;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
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
        child: ExpansionTile(
          shape: const Border(),
          childrenPadding: EdgeInsets.zero,
          tilePadding: EdgeInsets.zero,
          trailing: const SizedBox.shrink(),
          title: Row(
            children: [
              Image.asset(
                icon,
                height: 45.h,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 16.h,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          children: [
            SizedBox(height: 10.h),
            const Divider(
              indent: 4,
              endIndent: 4,
              color: Color(0xff009DFF),
              thickness: 2,
            ),
            SizedBox(height: 10.h),
            Text(
              desc,
              style: TextStyle(
                fontSize: 12.h,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                color: Colors.black,
                height: 2.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
