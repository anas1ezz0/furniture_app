import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: non_constant_identifier_names
AppBar CustomAppBar({final String? title}) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: SvgPicture.asset(
      'assets/icons/menu.svg',
      fit: BoxFit.scaleDown,
    ),
    actions: [
      SvgPicture.asset(
        'assets/icons/scan.svg',
      ),
      const SizedBox(
        width: 10,
      ),
      const Padding(
        padding: EdgeInsets.only(right: 10.0),
        child: Text(
          'Scan',
          style: TextStyle(fontSize: 20),
        ),
      )
    ],
  );
}
