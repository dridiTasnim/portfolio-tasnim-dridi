import 'dart:io';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:dio/dio.dart';
import 'dart:html' as html;

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFF1D1414).withOpacity(0.96),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding: const EdgeInsets.only(left: 100, top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        'Hello !!',
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w300,
                          fontSize: 25,
                        ),
                        speed: Duration(milliseconds: 100),
                      ),
                    ],
                    repeatForever: true,
                  ),
                  AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        "I'm Tasnim",
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: 60),
                        speed: Duration(milliseconds: 200),
                      ),
                    ],
                    totalRepeatCount: 1,
                  ),
                  AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        "Dridi",
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: 60),
                        speed: Duration(milliseconds: 200),
                      ),
                    ],
                    totalRepeatCount: 1,
                  ),
                  Text(
                    'Computer Networks Engineer',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w300,
                        fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          splashRadius: 5,
                          icon: Icon(
                            FontAwesomeIcons.github,
                            color: Colors.white,
                          ), // GitHub icon
                          onPressed: () {
                            final url =
                                Uri.parse("https://github.com/dridiTasnim");
                            launchUrl(url);
                          },
                        ),
                        IconButton(
                          splashRadius: 5,
                          icon: Icon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.white,
                          ), // LinkedIn icon
                          onPressed: () {
                            final url = Uri.parse(
                                "https://www.linkedin.com/in/tasnim-dridi/");
                            launchUrl(url);
                          },
                        ),
                        IconButton(
                          splashRadius: 5,
                          icon: Icon(
                            FontAwesomeIcons.envelope,
                            color: Colors.white,
                          ), // Email icon
                          onPressed: () {
                            String email = Uri.encodeComponent(
                                "tasnim.dridi@insat.ucar.tn");
                            Uri mail = Uri.parse("mailto:$email");
                            launchUrl(mail);
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: TextButton(
                        onPressed: () {
                          downloadAndOpenLocalPDF();
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.all(16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10), // Adjust the border radius
                          ),
                          backgroundColor: Color.fromRGBO(229, 3, 16, 1),
                        ),
                        child: Text(
                          'Download CV',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 20),
                        )),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 40, right: 100),
              width: screenWidth * 0.35,
              height: screenHeight * 0.7,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'images/tasnim.jpg',
                  fit: BoxFit.cover, // You can adjust the fit as needed
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }

  void downloadAndOpenLocalPDF() async {
     final String cloudPdfUrl = 'https://drive.google.com/file/d/1SJx73nu8bV1RAoTZVpy137LalBVxnz1S/view?usp=sharing';
    //final String pdfUrl = 'resume- Tasnim Dridi.pdf';
    final html.AnchorElement anchor = html.AnchorElement(href: cloudPdfUrl)
      ..target = 'webdownload'
      ..download = 'resume- Tasnim Dridi.pdf';
    anchor.click();
  }
}
