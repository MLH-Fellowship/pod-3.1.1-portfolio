import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:mlh_orientation_web/ui/pages/education.dart';
import 'package:mlh_orientation_web/ui/pages/projects.dart';
import 'package:mlh_orientation_web/ui/pages/work.dart';
import '../constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff121212),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ProfileWIdget(height: height),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.fromLTRB(60, 20, 60, 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 4,
                            width: height * 0.2,
                            decoration: BoxDecoration(
                              color: kDarkerGrey,
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(10)),
                            ),
                          ),
                        ),
                        SizedBox(width: 40),
                        InkWell(
                          borderRadius: BorderRadius.circular(100),
                          onTap: () {
                            setState(() => _selectedIndex = 0);
                            _pageController.animateToPage(0,
                                duration: Duration(milliseconds: 400),
                                curve: Curves.easeOutQuart);
                          },
                          child: Ink(
                            height: _selectedIndex == 0 ? 30 : 10,
                            width: _selectedIndex == 0 ? 30 : 10,
                            decoration: BoxDecoration(
                              color: _selectedIndex == 0 ? kPink : kDarkerGrey,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        SizedBox(width: 30),
                        InkWell(
                          borderRadius: BorderRadius.circular(100),
                          onTap: () {
                            setState(() => _selectedIndex = 1);
                            _pageController.animateToPage(1,
                                duration: Duration(milliseconds: 200),
                                curve: Curves.fastLinearToSlowEaseIn);
                          },
                          child: Ink(
                            height: _selectedIndex == 1 ? 30 : 10,
                            width: _selectedIndex == 1 ? 30 : 10,
                            decoration: BoxDecoration(
                              color: _selectedIndex == 1 ? kPink : kDarkerGrey,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        SizedBox(width: 30),
                        InkWell(
                          borderRadius: BorderRadius.circular(100),
                          onTap: () {
                            setState(() => _selectedIndex = 2);
                            _pageController.animateToPage(2,
                                duration: Duration(milliseconds: 200),
                                curve: Curves.fastLinearToSlowEaseIn);
                          },
                          child: Ink(
                            height: _selectedIndex == 2 ? 30 : 10,
                            width: _selectedIndex == 2 ? 30 : 10,
                            decoration: BoxDecoration(
                              color: _selectedIndex == 2 ? kPink : kDarkerGrey,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        SizedBox(width: 40),
                        Expanded(
                          child: Container(
                            height: 4,
                            width: height * 0.2,
                            decoration: BoxDecoration(
                              color: kDarkerGrey,
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(10)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Container(
                      height: height * 0.8,
                      width: double.infinity,
                      child: PageView(
                        controller: _pageController,
                        physics: BouncingScrollPhysics(),
                        children: [
                          ProjectScreen(),
                          WorkScreen(),
                          EducationScreen(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectsWidget extends StatelessWidget {
  const ProjectsWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Projects",
          style: TextStyle(
              fontSize: 30, fontFamily: "Montserrat", color: Colors.black),
        ),
        SizedBox(height: 20),
        ListView(
          shrinkWrap: true,
          children: [],
        ),
      ],
    );
  }
}

class ProfileWIdget extends StatelessWidget {
  const ProfileWIdget({
    Key key,
    @required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Color(0xff1D539F),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/bg.jpg"),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 20),
          SvgPicture.asset(
            "assets/logo.svg",
            fit: BoxFit.contain,
            height: height * 0.08,
            color: Color(0xffE2A120),
            placeholderBuilder: (context) => CircularProgressIndicator(),
          ),
          SizedBox(height: 20),
          CircleAvatar(
            radius: 80,
            child: Transform.scale(
              scale: 1.4,
              child: Lottie.asset(
                "assets/person.json",
                fit: BoxFit.contain,
                height: 200,
              ),
            ),
            backgroundColor: Colors.transparent,
          ),
          SizedBox(height: 60),
          Text(
            "Will Russell",
            style: TextStyle(
                color: Colors.white,
                fontSize: 55,
                fontWeight: FontWeight.bold,
                fontFamily: "Montserrat"),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
