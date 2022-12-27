import 'package:bussiness_website/components/constants.dart';

import 'package:bussiness_website/widgets/main/main_section.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Real Estate",
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBgColor,
        canvasColor: kBgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyText1: const TextStyle(color: kBodyTextColor),
              bodyText2: const TextStyle(color: kBodyTextColor),
            ),
      ),
      debugShowCheckedModeBanner: false,
      home: const MainSection(),
    );
  }
}
