import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pregnancy_navigator_95/helpers/afagsd.dart';
import 'package:pregnancy_navigator_95/main.dart';
import 'package:pregnancy_navigator_95/screens/nav_bar_screen.dart';

Future<void> dsafasfasfasfasasf(BuildContext context) async {
  final currencyAdaptyRestoreResult = await Dfsdfasdfaafas().adfsgfasd();
  if (currencyAdaptyRestoreResult?.accessLevels['premium']?.isActive ?? false) {
    prefs.setBool("isBuy", true);
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_) => const NavBarScreen()),
      (route) => false,
    );
  } else {
    showDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text('Restore purchase'),
        content: const Text(
            'Your purchase is not found. Write to currencySupport: https://forms.gle/DxVmvU8os5dQGSVB7'),
        actions: [
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () => {Navigator.of(context).pop()},
            child: const Text('Ok'),
          ),
        ],
      ),
    );
  }
}
