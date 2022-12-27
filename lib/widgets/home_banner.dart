import 'package:bussiness_website/components/constants.dart';
import 'package:bussiness_website/responsive.dart';
import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBgColor.withOpacity(0.1),
      child: AspectRatio(
        aspectRatio: Responsive.isDesktop(context) ? 1.7 : 1,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("assets/images/background.jpg", fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Build a greate future \n for all of us!",
                      style: Responsive.isDesktop(context)
                          ? Theme.of(context).textTheme.headline3!.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold)
                          : Theme.of(context).textTheme.headline5!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 50, vertical: 20.0),
                        backgroundColor: kPrimaryColor,
                      ),
                      onPressed: () {},
                      child: Text(
                        "Contact US",
                        style: TextStyle(color: kDarkColor),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
