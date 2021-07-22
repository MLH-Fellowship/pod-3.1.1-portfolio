import 'package:flutter/material.dart';
import 'package:mlh_orientation_web/ui/pages/projects.dart';

class EducationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Education",
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
            Flexible(child: ProjectDataWidget()),
            Flexible(child: ProjectDataWidget()),
            Flexible(child: ProjectDataWidget()),
          ],
        ),
        SizedBox(height: 60),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(child: ProjectDataWidget()),
            Flexible(child: ProjectDataWidget()),
            Flexible(child: ProjectDataWidget()),
          ],
        ),
      ],
    );
  }
}
