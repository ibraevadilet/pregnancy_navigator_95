import 'package:pregnancy_navigator_95/helpers/app_all_images.dart';

class ExModel {
  final String ex;
  final String icon;
  final String image;
  final String title;
  final String desk1;
  ExModel({
    required this.ex,
    required this.icon,
    required this.image,
    required this.title,
    required this.desk1,
  });
}

List<ExModel> get exList => [
      ExModel(
        ex: 'Exercise 1',
        icon: AppAllImages.ex1Icon,
        image: 'https://i.ibb.co/F4mpDn1/ex1.png',
        title: 'Low Back Stretch',
        desk1:
            "This low back stretch may help ease backaches Start on your hands and knees with your head in line with your back. Pull in your stomach, rounding your back slightly. Hold for several seconds. Then relax your stomach and back. Keep your back as flat as possible, and don't let it sag down.",
      ),
      ExModel(
        ex: 'Exercise 2',
        icon: AppAllImages.ex2Icon,
        image: 'https://i.ibb.co/3hb6XDg/ex2.png',
        title: 'Backward Stretch',
        desk1:
            "Start on your hands and knees. Keep your arms straight and your hands directly beneath your shoulders. Curl backward toward your heels as far as is comfortable for your knees. Tuck your head toward your knees and keep your arms extended. Hold for 10 seconds. Go back to the starting position.",
      ),
      ExModel(
        ex: 'Exercise 3',
        icon: AppAllImages.ex3Icon,
        image: 'https://i.ibb.co/Q6ZVBFQ/ex3.png',
        title: 'Backward Stretch\nwith Ball',
        desk1:
            "You can do the backward stretch with a fitness ball. Start on your knees. With straight arms, put your hands on a fitness ball in front of you. Curl backward slowly in the direction of your heels as far as is comfortable for your knees. Hold for several seconds. Then go back to the starting position.",
      ),
      ExModel(
        ex: 'Exercise 4',
        icon: AppAllImages.ex4Icon,
        image: 'https://i.ibb.co/J2vtbNW/ex4.png',
        title: 'Standing Palvic Tilt',
        desk1:
            "The standing pelvic tilt is another way to stretch the muscles in your lower back. Stand up straight with your back against a wall and your feet about shoulder-width apart. Push the small of your back against the wall. Hold for several seconds. Then go back to the starting position.",
      ),
      ExModel(
        ex: 'Exercise 5',
        icon: AppAllImages.ex5Icon,
        image: 'https://i.ibb.co/HrNSzMn/ex5.png',
        title: 'Palvic Tilt with Ball',
        desk1:
            "Sit on the floor with the fitness ball behind you. Lean against the ball. Keep your feet flat on the floor and your arms at your hips. Push the small of your back upward. Hold for 10 seconds. Then go back to the starting position. When you do this stretch, have someone nearby to help.",
      ),
      ExModel(
        ex: 'Exercise 6',
        icon: AppAllImages.ex6Icon,
        image: 'https://i.ibb.co/F4mpDn1/ex1.png',
        title: 'Torso Rotation',
        desk1:
            "Sit on the floor with your legs crossed. Hold your right foot with your left hand. Then put your right hand behind you, and slowly twist your upper body to the right. Hold for several seconds. Then go back to the starting position. Switch hands and repeat on the other side. ",
      ),
    ];
