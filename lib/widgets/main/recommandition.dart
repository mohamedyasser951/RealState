import 'package:bussiness_website/components/constants.dart';
import 'package:bussiness_website/models/recommendation.dart';
import 'package:flutter/material.dart';

class RecommanditionWidget extends StatelessWidget {
  const RecommanditionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
        child: Text(
          "Client Recommandition",
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      const SizedBox(
        height: 10.0,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                demoRecommendations.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right:5.0),
                  child: buildRecommanditionCard(
                  recommendation: demoRecommendations[index]),
                ),

                ),
          ),
        ),
      ),


    ]);
  }
}

// ignore: camel_case_types
class buildRecommanditionCard extends StatelessWidget {
  const buildRecommanditionCard({super.key, required this.recommendation});
  final Recommendation recommendation;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        color: kSecondaryColor,
        width: 390.0,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                    backgroundImage: AssetImage(recommendation.image!),
                    radius: 30.0),
                title: Text(
                  recommendation.name!,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                subtitle: Text(
                  recommendation.source!,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              Text(
                recommendation.text!,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(height: 1.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
