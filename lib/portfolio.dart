import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color(0xFF1D1414).withOpacity(0.9),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 50, bottom: 20),
              child: Text(
                "Portfolio",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontSize: 60),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 10),
              child: Text(
                "Projects",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  porject_card(
                      "Web application for film recommendation",
                      "Search for movies and see the cast, reviews and other details, wishList management and recommendation system using GPT API.",
                      "Flutter, NestJs, bloc for state management"),
                  porject_card(
                      "Vote Application",
                      "Design and implementation of a secure voting system with fingerprint.",
                      "Flutter, Figma, Firebase"),
                  porject_card(
                      "Human Activity Recognition- Distracted Driver detection",
                      "recognize the activity of the driver to know if it is safe-driving or unsafe",
                      "Tensorflow, Flask, Python"),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                porject_card(
                    "Sentiment Analysis For Amazon Reviews ",
                    "Analyzing Multilingual Amazon Reviews to extract customer satisfaction ",
                    "Tensorflow, HuggingFace, Colab"),
                porject_card(
                    "BI Data analysis Project",
                    "Implemented a solution to refresh Power BI datasets from an on-premises SQL Serverdatabase.",
                    "PowerBi, SQL server management studio, visual studio for data analysis"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 10, top: 20),
              child: Text(
                "Work Experience",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontSize: 30),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              porject_card(
                  "Travel Application",
                  "Designed and implemented modules for a mobile travel application, including features such" +
                      "as a city guide, real-time image translation, QR code reader, and hosting management \n At DOTCOM",
                  "Flutter, Figma, Hasura, GraphQL,Offline-First Technology"),
              porject_card(
                  "Data Analysis",
                  "Created a widget library for dashboard customization for their Reis Risk & Compliance Suite \n At Vneuron.",
                  "PostgreSQL,Data Exploration, KPIs Building"),
            ]),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 10, top: 20),
              child: Text(
                "Certifications",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontSize: 30),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              certification_card(" CCNA training ", "Introduction to Networks in March 2021"),
              certification_card(" Machine Learning ", "Machine Learning track certification on Qwiklabs by Google"),
              certification_card(" Python Fundamentals ", "Python Fundamentals course on DataCamp"),
              certification_card(" Deep Learning ", " Deep Learning Specialization by DeepLearning.AI"),
            ]),
          ],
        )));
  }

  porject_card(title, description, skills) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width * 0.3,
      child: Card(
        color: Color.fromARGB(179, 255, 253, 253),
        elevation: 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFF1D1414).withOpacity(0.9),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFF1D1414).withOpacity(0.9),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 8),
              child: Row(
                children: [
                  Text(
                    "Tools : ",
                    style: TextStyle(
                        color: Color(0xFF1D1414).withOpacity(0.9),
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  Expanded(
                    child: Text(
                      skills,
                      style: TextStyle(
                          color: Color(0xFF1D1414).withOpacity(0.9),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  certification_card(title, description) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width * 0.2,
      child: Card(
        color: Color.fromARGB(179, 255, 253, 253),
        elevation: 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFF1D1414).withOpacity(0.9),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFF1D1414).withOpacity(0.9),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}