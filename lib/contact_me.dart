import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;

class ContactMe extends StatefulWidget {
  const ContactMe({super.key});

  @override
  State<ContactMe> createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        //backgroundColor: Color(0xFF1D1414).withOpacity(0.96),
        body: Container(
      width: screenWidth,
      height: screenHeight,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 88, 112, 147).withOpacity(0.96),
        Color.fromARGB(255, 114, 88, 147).withOpacity(0.96),
        Color.fromARGB(255, 143, 77, 101).withOpacity(0.96),
        Color.fromARGB(255, 148, 78, 80).withOpacity(0.96),
        Color.fromARGB(255, 50, 35, 35).withOpacity(0.96)
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: MediaQuery.of(context).size.width > 850
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text(
                      "Get In Touch",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 60),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80, right: 80),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.linkedin,
                              size: 26,
                              color: Colors.white60,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            GestureDetector(
                              onTap: () {
                                final url = Uri.parse(
                                    "https://www.linkedin.com/in/tasnim-dridi/");
                                launchUrl(url);
                              },
                              child: Text(
                                "linkedin.com/in/tasnim-dridi/",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w300,
                                  fontSize: 22,
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.envelope,
                              size: 26,
                              color: Colors.white60,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            GestureDetector(
                              onTap: () {
                                String email = Uri.encodeComponent(
                                    "tasnim.dridi@insat.ucar.tn");
                                Uri mail = Uri.parse("mailto:$email");
                                launchUrl(mail);
                              },
                              child: Text("tasnim.dridi@insat.ucar.tn",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w300,
                                      fontSize: 22)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80, right: 80),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.github,
                              size: 26,
                              color: Colors.white60,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            GestureDetector(
                              onTap: () {
                                final url =
                                    Uri.parse("https://github.com/dridiTasnim");
                                launchUrl(url);
                              },
                              child: Text(
                                "github.com/dridiTasnim",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w300,
                                  fontSize: 22,
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.phone,
                              size: 26,
                              color: Colors.white60,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text("216+ 50854102",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w300,
                                    fontSize: 22))
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                          onPressed: () {
                            downloadAndOpenLocalPDF();
                          },
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.all(16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Adjust the border radius
                              ),
                              backgroundColor: Color.fromARGB(255, 127, 68, 89),
                              fixedSize: Size(200, screenHeight * 0.07)),
                          child: Text(
                            'Download CV',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Poppins",
                                fontSize: 20),
                          )),
                      TextButton(
                          onPressed: () {
                            String email = Uri.encodeComponent(
                                "tasnim.dridi@insat.ucar.tn");
                            Uri mail = Uri.parse("mailto:$email");
                            launchUrl(mail);
                          },
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.all(16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Adjust the border radius
                              ),
                              backgroundColor: Color.fromRGBO(85, 56, 82, 1),
                              fixedSize: Size(200, screenHeight * 0.07)),
                          child: Text(
                            'Reach Me',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Poppins",
                                fontSize: 20),
                          ))
                    ],
                  ),
                ])
          : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Text(
                      "Get In Touch",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 50),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight / 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.linkedin,
                        size: 26,
                        color: Colors.white60,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      GestureDetector(
                        onTap: () {
                          final url = Uri.parse(
                              "https://www.linkedin.com/in/tasnim-dridi/");
                          launchUrl(url);
                        },
                        child: Text(
                          "linkedin.com/in/tasnim-dridi/",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w300,
                            fontSize: 22,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.envelope,
                        size: 26,
                        color: Colors.white60,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      GestureDetector(
                        onTap: () {
                          String email =
                              Uri.encodeComponent("tasnim.dridi@insat.ucar.tn");
                          Uri mail = Uri.parse("mailto:$email");
                          launchUrl(mail);
                        },
                        child: Text("tasnim.dridi@insat.ucar.tn",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w300,
                                fontSize: 22)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.github,
                        size: 26,
                        color: Colors.white60,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      GestureDetector(
                        onTap: () {
                          final url =
                              Uri.parse("https://github.com/dridiTasnim");
                          launchUrl(url);
                        },
                        child: Text(
                          "github.com/dridiTasnim",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w300,
                            fontSize: 22,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.phone,
                        size: 26,
                        color: Colors.white60,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text("216+ 50854102",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w300,
                              fontSize: 22))
                    ],
                  ),
                  SizedBox(
                    height: screenHeight / 9,
                  ),
                  TextButton(
                      onPressed: () {
                        downloadAndOpenLocalPDF();
                      },
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.all(16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10), // Adjust the border radius
                          ),
                          backgroundColor: Color.fromARGB(255, 127, 68, 89),
                          fixedSize: Size(200, screenHeight * 0.07)),
                      child: Text(
                        'Download CV',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontSize: 20),
                      )),
                  SizedBox(height: 20,),
                  TextButton(
                      onPressed: () {
                        String email =
                            Uri.encodeComponent("tasnim.dridi@insat.ucar.tn");
                        Uri mail = Uri.parse("mailto:$email");
                        launchUrl(mail);
                      },
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.all(16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10), // Adjust the border radius
                          ),
                          backgroundColor: Color.fromRGBO(85, 56, 82, 1),
                          fixedSize: Size(200, screenHeight * 0.07)),
                      child: Text(
                        'Reach Me',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontSize: 20),
                      ))
                ],
              ),
            ),
    ));
  }

  void downloadAndOpenLocalPDF() async {
    final String cloudPdfUrl =
        'https://drive.google.com/file/d/1cC8DAHru-gXaTztNilPrmjuyQLiYzmFe/view?usp=sharing';
    //final String pdfUrl = 'resume- Tasnim Dridi.pdf';
    final html.AnchorElement anchor = html.AnchorElement(href: cloudPdfUrl)
      ..target = 'webdownload'
      ..download = 'resume- Tasnim Dridi.pdf';
    anchor.click();
  }
}
