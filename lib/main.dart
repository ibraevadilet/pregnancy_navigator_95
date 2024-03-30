import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pregnancy_navigator_95/helpers/afagsd.dart';
import 'package:pregnancy_navigator_95/screens/logo_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

late final SharedPreferences prefs;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  prefs = await SharedPreferences.getInstance();
  await Dfsdfasdfaafas().sdgdgbfhdsg();
  runApp(const PrNavigatorApp());
}

class PrNavigatorApp extends StatelessWidget {
  const PrNavigatorApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pregnancy Navigator App',
        theme: ThemeData.light().copyWith(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            shadowColor: Colors.white,
          ),
          scaffoldBackgroundColor: Colors.white,
          splashColor: Colors.transparent,
          splashFactory: NoSplash.splashFactory,
          highlightColor: Colors.transparent,
        ),
        home: const LogoScreen(),
      ),
    );
  }
}
