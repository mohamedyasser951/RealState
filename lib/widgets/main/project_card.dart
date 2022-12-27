import 'package:flutter/material.dart';

import '../../components/constants.dart';
import '../../models/projects.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project});
  final Project project;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      color: kSecondaryColor,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              project.image!,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              project.title!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: Text(
                project.description!,
                style: TextStyle(height: 1.5),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "More info >",
                  style: TextStyle(color: kPrimaryColor),
                ))
          ]),
    );
  }
}
