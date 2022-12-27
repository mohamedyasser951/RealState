import 'package:flutter/material.dart';

import '../../components/constants.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.30,
      child: Container(
        color: kSecondaryColor,
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(),
            Image(image: AssetImage("assets/images/logo.png"),width: 100,),
            Spacer(),
            Text(
              "Real Estate",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              "Modern Home with \n greate interior design",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w200,height: 1.5),
            ),
            Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}
