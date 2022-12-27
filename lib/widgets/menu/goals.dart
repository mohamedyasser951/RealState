import 'package:bussiness_website/components/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Goals extends StatelessWidget {
  const Goals({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: Text("Goals",style: Theme.of(context).textTheme.subtitle2,),
          ),
          buildGoals(text: "Planning stage"),
          buildGoals(text: "Development"),
          buildGoals(text: "Execution Phase"),
          buildGoals(text: "New Way to living"),

            
        ],
      ),
    );
  }
}


Widget buildGoals({required String text}) => Padding(
  padding: const EdgeInsets.only(bottom: kDefaultPadding/2),
  child:   Row(
  
    children: [
  
      SvgPicture.asset("assets/icons/check.svg"),
  
      SizedBox(width: kDefaultPadding/2,),
  
      Text(text,)
  
    ],
  
  ),
);