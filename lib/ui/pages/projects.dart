import 'package:flutter/material.dart';
import 'package:mlh_orientation_web/constants.dart';

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

class ProjectDataWidget extends StatelessWidget {
  const ProjectDataWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 400,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      decoration: BoxDecoration(
        color: Color(0xff1E1E1E),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            child: Text(
              "Task Tracker",
              style: TextStyle(
                color: kDarkerGrey,
                fontFamily: "Montserrat",
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Flexible(
            child: Text(
              "MLH Fellowship Pre Fellowship Project",
              style: TextStyle(
                color: Color(0xffDADADA),
                fontFamily: "Montserrat",
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Flexible(
            child: Text(
              "Summer 2021 - Batch 3.5",
              style: TextStyle(
                color: kPink,
                fontFamily: "Montserrat",
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
