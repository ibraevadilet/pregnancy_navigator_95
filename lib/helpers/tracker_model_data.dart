const image =
    'https://www.supersprint.com/public/img/01-504900-504930-504960-504990-505020.jpg';
const firstTemText = '''
Having a child is an amazing process, but the changes in a pregnant woman's body can be discomforting and even alarming. It's crucial to find an obstetrician-gynecologist and understand what unfolds in the body during these 9 months. Let's explore how a child develops week by week, from conception to birth, and delve into the changes affecting the mother's organs and systems.
Determining Pregnancy Dates
Several methods determine gestational age. Medical documents typically use the obstetric value—weeks since the last menstruation. Calculations include:
 Subtracting three months and adding 7 days.
 Counting forward 280 days or 40 weeks from the last period on the calendar.
 In assisted reproductive technologies, the embryo transfer day starts, adding 266 days and subtracting days outside the mother's body.
Development in the 1st Trimester
The countdown begins from the first day of menstruation. Pregnancy awareness may occur around 3-4 weeks with highly sensitive tests. Symptoms of morning sickness might be mild, especially with irregular periods.
Pregnancy detection through human chorionic gonadotropin (hCG) tests can happen 4-5 days earlier than pharmacy tests. This hormone is detected in both urine and blood, with blood concentrations rising slightly faster.
''';

const secondTemText = '''
The second trimester of pregnancy typically spans from week 14 to week 28, covering months four, five, and six. This period is often considered the "golden period" of pregnancy, as many women experience a reduction in the symptoms that are commonly associated with the first trimester, such as nausea and fatigue. Here are some key aspects of the second trimester:
Physical Changes:
Growth of the Baby Bump: The baby bump becomes more noticeable as the uterus expands, and many women start to show signs of pregnancy.
Weight Gain: Women usually experience a more steady and consistent weight gain during this trimester.
Fetal Development:
Organ Development: The baby's organs continue to develop, and by the end of the second trimester, most of them are formed.
Movement: The baby begins to move, and mothers may start feeling those first flutters, known as quickening.
Maternal Changes:
Breast Changes: Breasts continue to grow and may become more tender. The areolas may darken, and veins might be more visible.
''';
const thrdTemText = '''
The third trimester of pregnancy covers weeks 28 to 40, encompassing the final three months before childbirth. This period is marked by continued growth and development of the baby, as well as increased physical changes for the mother. Here are some key aspects of the third trimester:
Physical Changes:
Increased Baby Movement: As the baby grows, movements may become more pronounced and noticeable.
Expanding Belly: The abdomen continues to expand, and some women may experience discomfort as the baby takes up more space.
Breathing Difficulties: As the uterus enlarges, it can press against the diaphragm, causing shortness of breath for some women.
Fetal Development:
Rapid Growth: The baby gains weight rapidly during the third trimester, and the organs, such as the lungs and brain, continue to mature.
Positioning: The baby may start to move into a head-down position in preparation for birth, although not all babies do this until later.
Maternal Changes:
Breast Changes: Breasts may become even larger and more tender 
''';

class TrackerModel {
  final String image;
  final String fruit;
  final String length;
  final String weight;
  final String trimester;
  final String trimesterDescription;
  final String week;
  final String weekDescription;
  TrackerModel({
    required this.image,
    required this.fruit,
    required this.length,
    required this.weight,
    required this.trimester,
    required this.trimesterDescription,
    required this.week,
    required this.weekDescription,
  });
}

List<TrackerModel> get trackerData => [
      TrackerModel(
        image: 'https://i.ibb.co/BZKfYv7/cinnamon.png',
        fruit: 'Ground cinnamon',
        length: '2-4 mm',
        weight: '1 g',
        trimester: 'First trimester',
        trimesterDescription: firstTemText,
        week: '1st week',
        weekDescription:
            "During the first week of the menstrual cycle and prospective pregnancy, an oocyte begins maturing in the ovary, ready to meet a sperm. Meanwhile, the woman focuses on daily activities, anticipating the end of her period—the shedding of the uterine wall's functional layer unused in the previous cycle.",
      ),
      TrackerModel(
        image: 'https://i.ibb.co/BZKfYv7/cinnamon.png',
        fruit: 'Ground cinnamon',
        length: '2-4 mm',
        weight: '1 g',
        trimester: 'First trimester',
        trimesterDescription: firstTemText,
        week: '2nd week',
        weekDescription:
            "During the first week of the menstrual cycle and prospective pregnancy, an oocyte begins maturing in the ovary, ready to meet a sperm. Meanwhile, the woman focuses on daily activities, anticipating the end of her period—the shedding of the uterine wall's functional layer unused in the previous cycle.",
      ),
      TrackerModel(
        image: 'https://i.ibb.co/BZKfYv7/cinnamon.png',
        fruit: 'Ground cinnamon',
        length: '2-4 mm',
        weight: '1 g',
        trimester: 'First trimester',
        trimesterDescription: firstTemText,
        week: '3rd week',
        weekDescription:
            "During the first week of the menstrual cycle and prospective pregnancy, an oocyte begins maturing in the ovary, ready to meet a sperm. Meanwhile, the woman focuses on daily activities, anticipating the end of her period—the shedding of the uterine wall's functional layer unused in the previous cycle.",
      ),
      TrackerModel(
        image: 'https://i.ibb.co/BZKfYv7/cinnamon.png',
        fruit: 'Ground cinnamon',
        length: '2-4 mm',
        weight: '1 g',
        trimester: 'First trimester',
        trimesterDescription: firstTemText,
        week: '4th week',
        weekDescription:
            "During the first week of the menstrual cycle and prospective pregnancy, an oocyte begins maturing in the ovary, ready to meet a sperm. Meanwhile, the woman focuses on daily activities, anticipating the end of her period—the shedding of the uterine wall's functional layer unused in the previous cycle.",
      ),
      TrackerModel(
        image: 'https://i.ibb.co/BZKfYv7/cinnamon.png',
        fruit: 'Ground cinnamon',
        length: '2-4 mm',
        weight: '1 g',
        trimester: 'First trimester',
        trimesterDescription: firstTemText,
        week: '5th week',
        weekDescription:
            "During the first week of the menstrual cycle and prospective pregnancy, an oocyte begins maturing in the ovary, ready to meet a sperm. Meanwhile, the woman focuses on daily activities, anticipating the end of her period—the shedding of the uterine wall's functional layer unused in the previous cycle.",
      ),
      TrackerModel(
        image: 'https://i.ibb.co/8j74ZtB/Pea.png',
        fruit: 'Pea',
        length: '1 сm',
        weight: '1,5 - 2 g',
        trimester: 'First trimester',
        trimesterDescription: firstTemText,
        week: '6th week',
        weekDescription: '''
embryo development accelerates. Eyes, ears, esophagus, intestines, liver, pancreas, and respiratory/genitourinary organs form. Cardiac muscle cells contract audibly on ultrasound. Rudiments of arms, legs, oral cavity, skin, bones, and muscles appear. Thyroid, lens, and chorion (future placenta) develop. Nausea or vomiting is common. Breast growth starts, with potential 1-2 size increase. Hormones alter nipple color, revealing Montgomery glands. Skin changes occur in 89–99% of women. Normal weight gain can surpass 1 kg.
''',
      ),
      TrackerModel(
        image: 'https://i.ibb.co/smdSZPg/Bluberry.png',
        fruit: 'Bluberry',
        length: '2 cm',
        weight: '2-2,5 g',
        trimester: 'First trimester',
        trimesterDescription: firstTemText,
        week: '7th week',
        weekDescription: '''
The baby's brain, lungs, kidneys, bladder, jaws, and hands develop. By week's end, the heart becomes four-chambered. Uterus enlargement is checked at antenatal visits. Registration, based on blood hCG or ultrasound, can occur at 6 weeks, but late second month registration is fine if no concerns. After a manual examination, if no issues, lab or instrumental exams aren't necessary. Registration involves blood tests, infection checks, and referrals for preventive exams.
''',
      ),
      TrackerModel(
        image: 'https://i.ibb.co/VVGKZ7x/Raspberry.png',
        fruit: 'Raspberry',
        length: '3 cm',
        weight: '3-3,5 g',
        trimester: 'First trimester',
        trimesterDescription: firstTemText,
        week: '8th week',
        weekDescription: '''
Embryo size: 12 mm. Developed nervous system records brain impulses on an encephalogram. Human features emerge: straightened head, cervical curve, facial features, closed eyelids, formed ears, and clenched fists. Ultrasound shows a human silhouette; organs actively develop. Digestive tube lengthens, kidneys' structure complexifies, teeth rudiments form. Nervous and respiratory systems actively develop; skeleton forms. Eyes synthesize pigment for future color. Genitourinary system divides, germ cells appear, and kidneys produce urine.

''',
      ),
      TrackerModel(
        image: 'https://i.ibb.co/SypW49Q/qw.png',
        fruit: 'Olives',
        length: '4 - 4,5 cm',
        weight: '4,5 - 5 g',
        trimester: 'First trimester',
        trimesterDescription: firstTemText,
        week: '9th week',
        weekDescription: '''
The hemispheres of the baby’s brain are clearly visible, and fingers have formed on the arms. During an ultrasound, you can now see the tip of the nose.

At this stage, the expectant mother may notice that her usual trousers have become tight. And the reason for this is not yet the size of the uterus and baby, but the relaxation of the abdominal muscles under the influence of hormones - or banal bloating, the risk of which also increases due to hormonal changes and changes in metabolism. The former companions of the first trimester of pregnancy continue to bother you, but it is likely that their intensity will decrease.
''',
      ),
      TrackerModel(
        image: 'https://i.ibb.co/kgb2mcM/Prunes.png',
        fruit: 'Prunes',
        length: '5 - 6 cm',
        weight: '7 - 9 g',
        trimester: 'First trimester',
        trimesterDescription: firstTemText,
        week: '10th week',
        weekDescription: '''
The baby's head, tiny nostrils, developed eyes, ears, and brain convolutions are visible. Arms are bent, legs complete with visible toes and membranes. The nervous system allows subtle movements seen in ultrasounds. Sex determination is possible but challenging.
''',
      ),
      TrackerModel(
        image: 'https://i.ibb.co/NVCgj2L/Plum.png',
        fruit: 'Plum',
        length: '6-8 cm',
        weight: '10-15 g',
        trimester: 'First trimester',
        trimesterDescription: firstTemText,
        week: '11th week',
        weekDescription:
            "Embryo becomes a fetus, resembling a small person. Rounded head, formed heart, opening eyelids, developed ears, visible genitalia, and spread fingers/toes. First skeletal ossification occurs. Improved well-being often begins, toxicosis fades, appetite returns. Growing baby demands more nutrients, affecting the mother's nutritional needs. Uterus and mammary glands grow, causing brief discomfort. Sleeping on the stomach becomes impossible.",
      ),
      TrackerModel(
        image: 'https://i.ibb.co/0K7ptsP/Lime.png',
        fruit: 'Lime',
        length: '8-10 cm',
        weight: '15-20 g',
        trimester: 'First trimester',
        trimesterDescription: firstTemText,
        week: '12th week',
        weekDescription:
            "A significant week for expectant parents. If the first trimester is complication-free, an ultrasound at 12 weeks allows detailed observation of the growing baby. Key developments include the fully formed face, developed arms and legs with growing nails, 20 teeth anlage, completed hard and soft palates, and functioning internal organs. Although external genitalia are developed, determining the baby's sex might be challenging. The doctor assesses pregnancy duration, blood flow through the umbilical cord, uterus condition, cervix, and amniotic fluid.",
      ),
      TrackerModel(
        image: 'https://i.ibb.co/QdPByYG/Peach.png',
        fruit: 'Peach',
        length: '10-12 cm',
        weight: '20-30 g',
        trimester: 'First trimester',
        trimesterDescription: firstTemText,
        week: '13th week',
        weekDescription:
            "First screening is possible this week. Baby's movements increase, muscle tissue develops, and body proportions become more harmonious. Catching the baby with its thumb in its mouth during an ultrasound is likely as the sucking reflex begins. Despite increased activity, the mother cannot yet feel the baby's movements. By the end of the first trimester, many worries are behind, mood evens out, and the temperature returns to normal. Residual signs of toxicosis may persist.",
      ),
      TrackerModel(
        image: 'https://i.ibb.co/JFXVjGZ/Lemon.png',
        fruit: 'Lemon',
        length: '12-14 cm',
        weight: '30-50 g',
        trimester: 'Second trimester',
        trimesterDescription: secondTemText,
        week: '14th week',
        weekDescription:
            "The baby's vocal cords form, making training sounds. Bone marrow produces white blood cells for immune defense, and the thyroid gland synthesizes hormones. Internal genitalia develop, while the fully developed external genitalia remain small, making sex determination challenging. Vellus hair covers the skin, and initial head hair appears. Mothers adjust wardrobes due to improved well-being and a subtly rounded tummy. Comfortable attire, like specialized jeans or dresses, becomes essential, along with supportive underwear.",
      ),
      TrackerModel(
        image: 'https://i.ibb.co/h7sDQvk/Orange.png',
        fruit: 'Orange',
        length: '14-15 cm',
        weight: '50-75 g',
        trimester: 'Second trimester',
        trimesterDescription: secondTemText,
        week: '15th week',
        weekDescription:
            "Baby's motor activity begins. The child grimaces, tumbles, and moves limbs. Skin, visible blood vessels, eyebrows, sweat glands, saliva production, and hair color development occur. Respiratory system training starts by drawing amniotic fluid into the lungs. In boys, testosterone production begins.",
      ),
      TrackerModel(
        image: 'https://i.ibb.co/SdbgkGR/Avocado.png',
        fruit: 'Avocado',
        length: '16-18 cm',
        weight: '75-115 g',
        trimester: 'Second trimester',
        trimesterDescription: secondTemText,
        week: '16th week',
        weekDescription:
            "Fetus size: 10 cm. Voluntary movements mastered; mothers feel first tremors. Eyelids closed, but fetus senses light. Placenta actively forms for nutrient supply. Increased blood volume enhances oxygen and nutrient delivery, improving hair and skin quality. However, it may cause bleeding gums, increased heart rate, and nosebleeds, warranting consultation.",
      ),
      TrackerModel(
        image: 'https://i.ibb.co/10rtDXJ/Onion.png',
        fruit: 'Onion',
        length: '18-20 cm',
        weight: '115-160 g',
        trimester: 'Second trimester',
        trimesterDescription: secondTemText,
        week: '17th week',
        weekDescription:
            "Child's weight: about 150 g. Head size proportional, muscles strengthen for lifting. Hair growth, face, muscle, joint, and internal organ development continue. Expectant mothers crave fresh air. Normal weight gain is around 3.5 kg; excessive gain may impact health. In the second or third trimester, 25% of women develop nail dots and stripes, linked to increased metabolic needs during pregnancy, usually resolving post-childbirth without treatment.",
      ),
      TrackerModel(
        image: 'https://i.ibb.co/yY9RFB3/Potato.png',
        fruit: 'Potato',
        length: '20-22 cm',
        weight: '160-215 g',
        trimester: 'Second trimester',
        trimesterDescription: secondTemText,
        week: '18th week',
        weekDescription:
            "Fetus's eyes fully formed, blinking reflexively. Improved nerve impulse transmission. Ears straighten, and the baby reacts to external sounds. Meconium accumulates in the intestines, ready to be expelled on the first day of life. Second mandatory screening at 16–21 weeks reveals detailed facial features, movements, and likely gender determination. Structural features, organ sizes, height, and expected weight are assessed. Placenta, amniotic fluid, and mother's reproductive organs condition are detailed. Laboratory analysis needs vary.",
      ),
      TrackerModel(
        image: 'https://i.ibb.co/hXBBC9f/Mango.png',
        fruit: 'Mango',
        length: '22-24 cm',
        weight: '215-270 g',
        trimester: 'Second trimester',
        trimesterDescription: secondTemText,
        week: '19th week',
        weekDescription:
            "Intensive brown fat formation for baby's warmth. Sense organs actively develop, permanent teeth form, and spleen functions. Mother's hemoglobin concentration drops due to increased fluid circulation, causing mild health deterioration like lumbar discomfort, increased body temperature, urinary discomfort, and leg tingling. Baby is the size of a small eggplant, and the growing uterus exerts pressure on surrounding organs.",
      ),
      TrackerModel(
        image: 'https://i.ibb.co/9V049cK/Banana.png',
        fruit: 'Banana',
        length: '24-26 cm',
        weight: '270-350 g',
        trimester: 'Second trimester',
        trimesterDescription: secondTemText,
        week: '20th week',
        weekDescription:
            "Baby learns sucking and swallowing movements, intestines actively train, passing amniotic fluid, and meconium accumulates. Rapid heart growth, strengthening skeleton, and dense skin covered with vernix occur. Pregnancy becomes visibly noticeable for slender women. Uterus pressure on the diaphragm may cause shortness of breath, especially when climbing stairs. Sleeping on the back is now forbidden due to potential blood flow issues to the fetus.",
      ),
      TrackerModel(
        image: 'https://i.ibb.co/dB16hXY/Pomegranate.png',
        fruit: 'Pomegranate',
        length: '26-27 cm',
        weight: '350-410 g',
        trimester: 'Second trimester',
        trimesterDescription: secondTemText,
        week: '21st week',
        weekDescription: '''
Baby spins often in the uterus, allowing mothers to feel the first movements. Development includes eyelashes, taste recognition receptors, and skin acquiring desired color.
Frequent urination returns with renewed vigor; regular satisfaction of this need is essential, and monitoring vaginal discharge is advised. Discharge, white or slimy, should not have a bad odor or cause burning or itching. Routine gynecologist visits include a flora smear and infection diagnosis.
''',
      ),
      TrackerModel(
        image: 'https://i.ibb.co/6NNy028/Papaya.png',
        fruit: 'Papaya',
        length: '27-29 cm',
        weight: '410-500 g',
        trimester: 'Second trimester',
        trimesterDescription: secondTemText,
        week: '22nd week',
        weekDescription:
            "The baby weighs about half a kilogram, and premature care methods are effective if needed. The child begins to feel their body in the uterus, and the musculoskeletal system continues to form. Maternal calcium reserves are increasingly consumed, necessitating monitoring of teeth, bones, and joints. Consultation with a doctor may lead to prescribed calcium preparations like Calcium D3 Nycomed Forte or Complivit Calcium D3. Enlarged uterus may cause heartburn, requiring therapeutic measures.",
      ),
      TrackerModel(
        image: 'https://i.ibb.co/m60vx4s/Grapefruit.png',
        fruit: 'Grapefruit',
        length: '29-31 cm',
        weight: '500-600 g',
        trimester: 'Second trimester',
        trimesterDescription: secondTemText,
        week: '23rd week',
        weekDescription: '''
By this time, the baby's brain contains a full set of neurons. The immune and lymphatic systems' organs mature, including the spleen, lymph nodes, bone marrow, and the appearance of the thymus gland. Breathing apparatus training progresses, and diligent babies may experience "fetal hiccups," causing rhythmic tremors felt by the pregnant woman. If the episodes subside after a few minutes, there's no need to worry. Prolonged episodes may require consultation with a doctor, as they can be indicative of oxygen deprivation.
''',
      ),
      TrackerModel(
        image: 'https://i.ibb.co/VSZT7j2/Melon.png',
        fruit: 'Melon',
        length: '31-32 cm',
        weight: '600-750 g',
        trimester: 'Second trimester',
        trimesterDescription: secondTemText,
        week: '24th week',
        weekDescription:
            "The fetus produces surfactant, aiding lung function. Changes in the expectant mother's gait may occur as the center of gravity shifts. Discomfort in the spine, calves, or symphysis pubis should be discussed with a neurologist or orthopedist. Recommendations may include wearing a bandage or compression stockings",
      ),
      TrackerModel(
        image: 'https://i.ibb.co/qDqdgtk/Cauliflower.png',
        fruit: 'Cauliflower',
        length: '32-33 cm',
        weight: '750-850 g',
        trimester: 'Second trimester',
        trimesterDescription: secondTemText,
        week: '25th week',
        weekDescription:
            "Fatigue returns for many pregnant women, and regular fetal movements are felt. Any sudden change in movement patterns or prolonged inactivity should prompt consultation with an obstetrician-gynecologist.",
      ),
      TrackerModel(
        image: 'https://i.ibb.co/Tm2JgsY/Lettuce.png',
        fruit: 'Lettuce',
        length: '33-35 cm',
        weight: '850-1000 g',
        trimester: 'Second trimester',
        trimesterDescription: secondTemText,
        week: '26th week',
        weekDescription: '''
Baby's systems and organs continue maturing, with increased muscle and fat mass. In boys, testicles descend; in girls, the vagina forms. The baby can recognize the mother's voice and respond to music, songs, and affectionate addresses.
For those with a normal BMI, weight gain is about 9 kg by this period. Varied weight targets apply to different BMI categories. Swelling, marble-patterned legs, noticeable veins, dry and itchy abdomen skin are common. About 46% of pregnant women have stretch marks by the 24th week, becoming more visible in the third trimester.
''',
      ),
      TrackerModel(
        image: 'https://i.ibb.co/Y8fRtsT/Swede.png',
        fruit: 'Swede',
        length: '35-37 cm',
        weight: '1-1,2 kg',
        trimester: 'Second trimester',
        trimesterDescription: secondTemText,
        week: '27th week',
        weekDescription:
            "Baby has room to maneuver; positioning for childbirth is not a concern yet. Organs producing hormones actively develop. Baby nearly self-sufficient with hormones. Weight: about a kilogram, height: 35 centimeters. The baby begins distinguishing different colors. Some women feel training contractions this week, rhythmic but short-lasting uterine contractions, usually normal in pregnancy.",
      ),
      TrackerModel(
        image: 'https://i.ibb.co/Bt3mhZF/Eggplant.png',
        fruit: 'Eggplant',
        length: '37-38 cm',
        weight: '1,2-1,35 kg',
        trimester: 'Third trimester',
        trimesterDescription: thrdTemText,
        week: '28th week',
        weekDescription:
            "Baby is no longer completely thin, with smoothed skin and slightly open eyelids. Can distinguish taste of amniotic fluid, reacting to mother's food choices. Women may experience sweating, hot flashes, or sudden chills. Calf muscle cramps may occur due to mineral concentration changes, varicose veins, anemia, or pressure on the inferior vena cava by the uterus. For mothers carrying twins, maternity leave may commence during this period.",
      ),
      TrackerModel(
        image: 'https://i.ibb.co/L1Bgjg0/Cabbage.png',
        fruit: 'Cabbage',
        length: '38-40 cm',
        weight: '1,35-1,5 kg',
        trimester: 'Third trimester',
        trimesterDescription: thrdTemText,
        week: '29th week',
        weekDescription:
            "Baby's skin is less wrinkled, and vellus hair starts falling out. Mature hair actively grows on the head, covering it tightly at birth in most babies. The baby moves, blinks, but tends to stay in a head-down position, typical for childbirth.",
      ),
      TrackerModel(
        image: 'https://i.ibb.co/0YjGy2m/Cucumber.png',
        fruit: 'Cucumber',
        length: '40-41 cm',
        weight: '1,5-1,65 kg',
        trimester: 'Third trimester',
        trimesterDescription: thrdTemText,
        week: '30th week',
        weekDescription:
            "Baby focuses on preparing muscles and respiratory system for birth. Lungs, liver, and pancreas are sufficiently developed for potential premature birth success, but other systems and organs need further maturation. Some women may experience colostrum release; breast pads like Medela or Johnson's Baby can be useful.",
      ),
      TrackerModel(
        image: 'https://i.ibb.co/z543ZxX/Pineapple.png',
        fruit: 'Pineapple',
        length: '41-42 cm',
        weight: '1,65-1,8 kg',
        trimester: 'Third trimester',
        trimesterDescription: thrdTemText,
        week: '31st week',
        weekDescription:
            "Baby weighs over one and a half kilograms, with a sleep-wake pattern established. The baby still sleeps most of the day but can keep eyes open for longer periods. Pregnant woman's weight gain slows down to 300-400 g per week. Risk of gestosis increases, with symptoms like high blood pressure, edema, and protein in the urine. Regular medical examinations are essential, and any alarming symptoms should prompt immediate doctor contact.",
      ),
      TrackerModel(
        image: 'https://i.ibb.co/bR3vyVv/Squash.png',
        fruit: 'Squash',
        length: '42-43 cm',
        weight: '1,8-1,95 kg',
        trimester: 'Third trimester',
        trimesterDescription: thrdTemText,
        week: '32nd week',
        weekDescription:
            "The child's immune system prepares to protect against external dangers, and subcutaneous fat accumulates. The hormone relaxin is produced, relaxing the muscle layer of the uterus, pelvic ligaments, and other structures involved in childbirth. Expectant mothers may feel discomfort in the pubic joint and distant joints like the knees. Minimizing load and consulting a specialist is advised.",
      ),
      TrackerModel(
        image: 'https://i.ibb.co/tKbrMRd/Durian.png',
        fruit: 'Durian',
        length: '43-44 cm',
        weight: '1,95-2,1 kg',
        trimester: 'Third trimester',
        trimesterDescription: thrdTemText,
        week: '33rd week',
        weekDescription:
            "Baby's growth slows, and position changes occur less frequently. Limited space leads to crossed legs pressed to the tummy, with nails reaching notable sizes. Pregnant women often discern the baby's position in their abdominal wall. Intensive movements may hit internal organs or lower ribs.",
      ),
      TrackerModel(
        image: 'https://i.ibb.co/ZW1pCkd/Pumpkin.png',
        fruit: 'Pumpkin',
        length: '44-45 cm',
        weight: '2,1-2,25 kg',
        trimester: 'Third trimester',
        trimesterDescription: thrdTemText,
        week: '34th week',
        weekDescription:
            "Baby's proportions are fully formed, resembling a newborn. Sucking reflex is honed, with 95% of babies in the optimal position for natural childbirth. Expectant mothers still experience quick fatigue, shortness of breath during intense walking, and heaviness after a heavy lunch. Heavy watery discharge is a potential sign of premature labor and requires immediate medical attention.",
      ),
      TrackerModel(
        image: 'https://i.ibb.co/jD4NkWW/Coconut.png',
        fruit: 'Coconut',
        length: '45-46 cm',
        weight: '2,25-2,5 kg',
        trimester: 'Third trimester',
        trimesterDescription: thrdTemText,
        week: '35th week',
        weekDescription:
            "Baby's lungs are sufficiently developed for oxygen supply at birth. Maturation of vital nerve centers in the brain concludes, including cardiovascular, respiratory, and thermoregulatory centers. Increased mood swings in the expectant mother are influenced by hormonal changes and excitement before the impending birth.",
      ),
      TrackerModel(
        image: 'https://i.ibb.co/GdN7P4s/Honey-melon.png',
        fruit: 'Honey melon',
        length: '46-48 cm',
        weight: '2,5-2,6 kg',
        trimester: 'Third trimester',
        trimesterDescription: thrdTemText,
        week: '36th week',
        weekDescription:
            "Baby's gastrointestinal tract is ready for breast milk. There's still time for the baby to change position in the uterus for optimal childbirth. The baby sleeps more often, preparing the nervous system for stress during birth. If you notice reduced fetal movements (less than ten kicks in two hours), inform your doctor. As labor approaches, vaginal discharge increases, but it should not have an unpleasant odor or cause discomfort.",
      ),
      TrackerModel(
        image: 'https://i.ibb.co/kyC2bK0/Zucchini.png',
        fruit: 'Zucchini',
        length: '48-49 cm',
        weight: '2,6-2,8 kg',
        trimester: 'Third trimester',
        trimesterDescription: thrdTemText,
        week: '37th week',
        weekDescription:
            "Baby's intrauterine development is nearly complete, and a baby born this week is considered full-term. It descends into the pelvic cavity, and the adrenal glands enlarge, producing hormones for the body's stress response. Mothers may start imagining meeting their baby and regaining the ability to sleep on their back or stomach. Packing a hospital bag is advisable. Pay attention to uterine contractions, decreasing intervals, and increasing duration, as these may indicate labor onset.",
      ),
      TrackerModel(
        image: 'https://i.ibb.co/cx0zpGs/Butternut-Squash.png',
        fruit: 'Butternut Squash',
        length: '49-50 cm',
        weight: '2,8-3 kg',
        trimester: 'Third trimester',
        trimesterDescription: thrdTemText,
        week: '38th week',
        weekDescription:
            "Most babies at this stage reach 50 cm and weigh over 3 kg, occupying all available space in the uterus. Stomach dropping alleviates heartburn and shortness of breath. Signs of impending labor include the release of a mucus plug, a significant amount of vaginal fluid (amniotic fluid breaking), a new, dull pain at the lower back, and the appearance of frequent contractions. If feeling well, continue walking in fresh air, keeping the pregnant woman’s exchange card and staying close to home.",
      ),
      TrackerModel(
        image: 'https://i.ibb.co/xzRBG6Q/Watermelon.png',
        fruit: 'Watermelon',
        length: '50-51 cm',
        weight: '3-3,2 kg',
        trimester: 'Third trimester',
        trimesterDescription: thrdTemText,
        week: '39th week',
        weekDescription:
            "The baby's head has descended toward the pelvic bones, and fetal development is complete. Maximum mechanical stress on the bladder and intestines can impact sleep, compounded by psychological factors, such as fear of sleeping through childbirth.",
      ),
      TrackerModel(
        image: 'https://i.ibb.co/9bPSL64/Jackfruit.png',
        fruit: 'Jackfruit',
        length: '51-54 cm',
        weight: '3,2-3,5 kg',
        trimester: 'Third trimester',
        trimesterDescription: thrdTemText,
        week: '40th week',
        weekDescription: '''
The expected date of birth is approaching, but if it doesn't feel imminent, there's no need to worry. Two legal weeks still remain for preparation. Addressing fears about childbirth and finding ways to alleviate them can be beneficial, as discussed in the article "Worry less about childbirth."
''',
      ),
    ];
