import 'package:flutter/material.dart';
import 'package:mlh_orientation_web/ui/models/tile.dart';

class ProjectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Projects",
          style: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 26,
            color: Color(0xffDADADA),
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(child: ProjectDataWidget("Task Tracker", "MLH Fellowship Pre Fellowship Project", "Summer 2021 - Batch 3.5")),
            Flexible(child: ProjectDataWidget("Task Tracker", "MLH Fellowship Pre Fellowship Project", "Summer 2021 - Batch 3.5")),
            Flexible(child: ProjectDataWidget("Task Tracker", "MLH Fellowship Pre Fellowship Project", "Summer 2021 - Batch 3.5")),
          ],
        ),
        SizedBox(height: 60),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(child: ProjectDataWidget("Task Tracker", "MLH Fellowship Pre Fellowship Project", "Summer 2021 - Batch 3.5")),
            Flexible(child: ProjectDataWidget("Task Tracker", "MLH Fellowship Pre Fellowship Project", "Summer 2021 - Batch 3.5")),
            Flexible(child: ProjectDataWidget("Task Tracker", "MLH Fellowship Pre Fellowship Project", "Summer 2021 - Batch 3.5")),
          ],
        ),
      ],
    );
  }
}
