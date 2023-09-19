import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 88, 112, 147).withOpacity(0.96),//Color(0xFF1D1414).withOpacity(0.9),
        body: Column(
          crossAxisAlignment: MediaQuery.of(context).size.width > 850 ?CrossAxisAlignment.start : CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 50,right: 50, bottom: 20),
              child: Text(
                "Skills",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontSize: MediaQuery.of(context).size.width > 850? 60: 50),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  skill_card("images/python.png", "Python"),
                  skill_card("images/tensorflow.png", "Tensorflow"),
                  skill_card("images/github.png", "Github"),
                  skill_card("images/mysql.png", "MySQL"),
                  skill_card("images/postgresql (2).png", "PostgreSQL"),
                  skill_card("images/PowerBiLogo.png", "PowerBI"),
                  skill_card("images/azure.png", "Microsoft \n Azure"),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  skill_card("images/c++.png", "C++"),
                  skill_card("images/dart.png", "Dart"),
                  skill_card("images/figma.png", "Figma"),
                  skill_card("images/flutter.png", "Flutter"),
                  skill_card("images/java.png", "Java"),
                  skill_card("images/web.png", "Html,CSS,JS"),
                  skill_card("images/nestjs.png", "NestJS"),
                ],
              ),
            )
          ],
        ));
  }

  skill_card(images_name, name) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.12,
          height: MediaQuery.of(context).size.height * 0.12,
          child: Card(
            color: Color.fromARGB(255, 150, 121, 187).withOpacity(0.7),//Color.fromARGB(179, 197, 89, 89),
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            margin: EdgeInsets.only(right: 8),
            child: Center(
                child: Image.asset(
              images_name,
              fit: BoxFit.scaleDown,
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            name,
            style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w300,
                fontSize: MediaQuery.of(context).size.width > 850?14:10,
                color: Colors.white),
          ),
        )
      ],
    );
  }
}
