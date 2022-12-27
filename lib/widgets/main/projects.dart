import 'package:bussiness_website/components/constants.dart';
import 'package:bussiness_website/models/projects.dart';
import 'package:bussiness_website/responsive.dart';
import 'package:bussiness_website/widgets/main/project_card.dart';

import 'package:flutter/material.dart';

class ProjectsWidget extends StatelessWidget {
  const ProjectsWidget({
    super.key,
  });
  //final Project project;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Our Projects",
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(
          height: 10.0,
        ),
        Responsive(
          desktop: bildGridView(crossAxisCount: 3, childAspectRatio: 0.75),
          mobileLarge: bildGridView(crossAxisCount: 2, childAspectRatio: 0.75),
          tablet: bildGridView(
              crossAxisCount: MediaQuery.of(context).size.width < 900 ? 2 : 3,
              childAspectRatio: 0.75),
          mobile: bildGridView(crossAxisCount: 1, childAspectRatio: 0.75),
        ),
      ],
    );
  }
}

GridView bildGridView({
  required int crossAxisCount,
  required double childAspectRatio,
}) =>
    GridView.builder(
        itemCount: demoProjects.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10,
          childAspectRatio: childAspectRatio,
        ),
        itemBuilder: (context, index) =>
            ProjectCard(project: demoProjects[index]));
