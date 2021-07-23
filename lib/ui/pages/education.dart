import 'package:flutter/material.dart';
import 'package:mlh_orientation_web/ui/models/tile.dart';


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
            Flexible(child: ProjectDataWidget("Class 12", "Delhi Public School, Vasant Kunj", "2017-2018")),
            Flexible(child: ProjectDataWidget("Class 12", "Delhi Public School, Vasant Kunj", "2017-2018")),
            Flexible(child: ProjectDataWidget("Class 12", "Delhi Public School, Vasant Kunj", "2017-2018")),
          ],
        ),
        SizedBox(height: 60),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(child: ProjectDataWidget("Class 12", "Delhi Public School, Vasant Kunj", "2017-2018")),
            Flexible(child: ProjectDataWidget("Class 12", "Delhi Public School, Vasant Kunj", "2017-2018")),
            Flexible(child: ProjectDataWidget("Class 12", "Delhi Public School, Vasant Kunj", "2017-2018")),
          ],
        ),
      ],
    );
  }
}
