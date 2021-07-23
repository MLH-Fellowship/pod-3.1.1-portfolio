import 'package:flutter/material.dart';
import 'package:mlh_orientation_web/constants.dart';

class ProjectDataWidget extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  
  ProjectDataWidget(this.text1, this.text2, this.text3);

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
              text1,
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
              text2,
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
              text3,
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