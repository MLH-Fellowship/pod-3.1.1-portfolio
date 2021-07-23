import 'package:flutter/material.dart';
import 'package:mlh_orientation_web/ui/models/tile.dart';

class WorkScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Work Experience",
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
            Flexible(child: ProjectDataWidget("Circle Head and Founder", "Lean In Banasthali Vidyapith", "2021-2022")),
            Flexible(child: ProjectDataWidget("Circle Head and Founder", "Lean In Banasthali Vidyapith", "2021-2022")),
            Flexible(child: ProjectDataWidget("Circle Head and Founder", "Lean In Banasthali Vidyapith", "2021-2022")),
          ],
        ),
        SizedBox(height: 60),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(child: ProjectDataWidget("Circle Head and Founder", "Lean In Banasthali Vidyapith", "2021-2022")),
            Flexible(child: ProjectDataWidget("Circle Head and Founder", "Lean In Banasthali Vidyapith", "2021-2022")),
            Flexible(child: ProjectDataWidget("Circle Head and Founder", "Lean In Banasthali Vidyapith", "2021-2022")),
          ],
        ),
      ],
    );
  }
}