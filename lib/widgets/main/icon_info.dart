import 'package:bussiness_website/components/constants.dart';
import 'package:bussiness_website/responsive.dart';
import 'package:flutter/material.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25.0),
      child: Responsive.ismobileLarge(context) ?
      Column(
        children: [
          Row(
            children: [
              Expanded(child: buildIconInfo(context: context, icon: Icons.supervisor_account, text: "76+", label: "clients")),
              Expanded(child: buildIconInfo(context: context, icon: Icons.location_on, text: "139+", label: "Projects")),
            ],
          ),
          const SizedBox(height: 50.0,),
          Row(
            children: [
              Expanded(child: buildIconInfo(context: context, icon: Icons.public, text: "30+", label: "Countries"),),
              Expanded(child: buildIconInfo(context: context, icon: Icons.star, text: "13k+", label: "Stars"),),
            ],
          ),
        ],
      )
      :Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildIconInfo(context: context, icon: Icons.supervisor_account, text: "76+", label: "clients"),
            buildIconInfo(context: context, icon: Icons.location_on, text: "139+", label: "Projects"),
            buildIconInfo(context: context, icon: Icons.public, text: "30+", label: "Countries"),
            buildIconInfo(context: context, icon: Icons.star, text: "13k+", label: "Stars"),
          ],
      )
      
      ,
    );
  }
}

Widget buildIconInfo({
  required BuildContext context,
  required IconData icon,
  required String text,
  required String label,
})=> Column(
  children: [
    Icon(icon,size: 45.0,color: Colors.white,),
    const SizedBox(height: 10.0,),
    Text(text,style:Theme.of(context).textTheme.headline6!.copyWith(color: kPrimaryColor,fontSize: 30.0) ,),
    Text(label,style: Theme.of(context).textTheme.subtitle2,)
  ],
);