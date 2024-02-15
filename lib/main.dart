import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:google_fonts/google_fonts.dart';

import 'di/depencenecy_injection.dart';
import 'screens/home.dart';

void main() {
  initGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Furniture App',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          // Here we set DM Sans as our default fonts
          // Now we also apply out text color to all flutter textTheme
          textTheme:
              GoogleFonts.dmSansTextTheme().apply(displayColor: kTextColor),
        ),
        home: const Home());
  }
}
