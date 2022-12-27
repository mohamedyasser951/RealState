
import 'package:bussiness_website/screens/home.dart';
import 'package:bussiness_website/widgets/home_banner.dart';
import 'package:bussiness_website/widgets/main/projects.dart';
import 'package:bussiness_website/widgets/main/recommandition.dart';
import 'package:flutter/material.dart';

import 'icon_info.dart';
class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePage(
      mainSection: SingleChildScrollView(
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
             children: const[
              HomeBanner(),
              IconInfo(),
               ProjectsWidget(),
               RecommanditionWidget(),
               SizedBox(height: 50.0,)
             ],
          ),
      ),
    );
  }
}