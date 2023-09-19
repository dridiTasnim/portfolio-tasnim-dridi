import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/about_me.dart';
import 'package:portfolio/contact_me.dart';
import 'package:portfolio/main_page.dart';
import 'package:portfolio/portfolio.dart';
import 'package:portfolio/skills.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  List on_pressed = [false, false, false, false, false];
  final PageController pageController = PageController();
  final List<Widget> pages = [
    MainPage(),
    AboutMe(),
    Skills(),
    Portfolio(),
    ContactMe()
  ];
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    print(screenWidth);
    return screenWidth > 850
        ? Scaffold(
            appBar: AppBar(
                backgroundColor: Color.fromARGB(
                    255, 78, 95, 124), //Color(0xFF1D1414).withOpacity(0.96),
                elevation: 8,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Tasnim Dridi',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "AlexBrush",
                            fontSize: 26),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 60),
                          child: TextButton(
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.all(16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      10), // Adjust the border radius
                                ),
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                                foregroundColor:
                                    Color.fromARGB(255, 98, 71, 71)),
                            child: Text(
                              "Home",
                              style: TextStyle(
                                  color: on_pressed[0]
                                      ? Colors.white
                                      : Colors.white.withOpacity(0.7),
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w300,
                                  fontSize: screenWidth < 980 ? 12 : 16),
                            ),
                            onPressed: () => {
                              setState(() {
                                on_pressed = [true, false, false, false, false];
                                pageController.animateToPage(
                                  0,
                                  duration: Duration(
                                      milliseconds:
                                          500), // Adjust the duration as needed
                                  curve: Curves
                                      .easeInOut, // Adjust the curve as needed
                                );
                                print(on_pressed);
                              })
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 60.0),
                          child: TextButton(
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.all(16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      10), // Adjust the border radius
                                ),
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                                foregroundColor:
                                    Color.fromARGB(255, 98, 71, 71)),
                            child: Text(
                              "About Me",
                              style: TextStyle(
                                  color: on_pressed[1]
                                      ? Colors.white
                                      : Colors.white.withOpacity(0.7),
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w300,
                                  fontSize: screenWidth < 980 ? 12 : 16),
                            ),
                            onPressed: () => {
                              setState(() {
                                on_pressed = [false, true, false, false, false];
                                pageController.animateToPage(
                                  1,
                                  duration: Duration(
                                      milliseconds:
                                          500), // Adjust the duration as needed
                                  curve: Curves
                                      .easeInOut, // Adjust the curve as needed
                                );
                                print(on_pressed);
                              })
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 60.0),
                          child: TextButton(
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.all(16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      10), // Adjust the border radius
                                ),
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                                foregroundColor:
                                    Color.fromARGB(255, 98, 71, 71)),
                            child: Text(
                              "Skills",
                              style: TextStyle(
                                  color: on_pressed[2]
                                      ? Colors.white
                                      : Colors.white.withOpacity(0.7),
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w300,
                                  fontSize: screenWidth < 980 ? 12 : 16),
                            ),
                            onPressed: () => {
                              setState(() {
                                on_pressed = [false, false, true, false, false];
                                pageController.animateToPage(
                                  2,
                                  duration: Duration(
                                      milliseconds:
                                          500), // Adjust the duration as needed
                                  curve: Curves
                                      .easeInOut, // Adjust the curve as needed
                                );
                                print(on_pressed);
                              })
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 60.0),
                          child: TextButton(
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.all(16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      10), // Adjust the border radius
                                ),
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                                foregroundColor:
                                    Color.fromARGB(255, 98, 71, 71)),
                            child: Text(
                              "Portfolio",
                              style: TextStyle(
                                  color: on_pressed[3]
                                      ? Colors.white
                                      : Colors.white.withOpacity(0.7),
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w300,
                                  fontSize: screenWidth < 980 ? 12 : 16),
                            ),
                            onPressed: () => {
                              setState(() {
                                on_pressed = [false, false, false, true, false];
                                pageController.animateToPage(
                                  3,
                                  duration: Duration(
                                      milliseconds:
                                          500), // Adjust the duration as needed
                                  curve: Curves
                                      .easeInOut, // Adjust the curve as needed
                                );
                                print(on_pressed);
                              })
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: TextButton(
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.all(16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      10), // Adjust the border radius
                                ),
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                                foregroundColor:
                                    Color.fromARGB(255, 98, 71, 71)),
                            child: Text(
                              "Get In Touch",
                              style: TextStyle(
                                  color: on_pressed[4]
                                      ? Colors.white
                                      : Colors.white.withOpacity(0.7),
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w300,
                                  fontSize: screenWidth < 980 ? 12 : 16),
                            ),
                            onPressed: () => {
                              setState(() {
                                on_pressed = [false, false, false, false, true];
                                pageController.animateToPage(
                                  4,
                                  duration: Duration(
                                      milliseconds:
                                          500), // Adjust the duration as needed
                                  curve: Curves
                                      .easeInOut, // Adjust the curve as needed
                                );
                                print(on_pressed);
                              })
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                )),
            body: PageView.builder(
              controller: pageController,
              scrollDirection: Axis.vertical,
              dragStartBehavior: DragStartBehavior.down,
              itemCount: pages.length,
              onPageChanged: (index) {
                setState(() {
                  on_pressed = [false, false, false, false, false];
                  on_pressed[index] = true;
                });
              },
              itemBuilder: (context, index) {
                return Container(
                  width: screenWidth,
                  height: screenHeight,
                  child: pages[index]);
              },
            ))
        : Scaffold(
            drawer: Drawer(
              backgroundColor: Color.fromARGB(255, 78, 95, 124),
              elevation: 8,
              child: ListView(
                padding:
                    EdgeInsets.only(top: screenHeight / 3, right: 8, left: 8),
                children: [
                  ListTile(
                      title: Text(
                        "Home",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: on_pressed[0]
                                ? Colors.white
                                : Colors.white.withOpacity(0.7),
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w300,
                            fontSize: 16),
                      ),
                      onTap: () => {
                            setState(() {
                              on_pressed = [true, false, false, false, false];
                              pageController.animateToPage(
                                0,
                                duration: Duration(
                                    milliseconds:
                                        500), // Adjust the duration as needed
                                curve: Curves
                                    .easeInOut, // Adjust the curve as needed
                              );
                              Navigator.pop(context);
                            }), 
                          }),
                  ListTile(
                      title: Text(
                        "About Me",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: on_pressed[0]
                                ? Colors.white
                                : Colors.white.withOpacity(0.7),
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w300,
                            fontSize: 16),
                      ),
                      onTap: () => {
                            setState(() {
                              on_pressed = [false, true, false, false, false];
                              pageController.animateToPage(
                                1,
                                duration: Duration(
                                    milliseconds:
                                        500), // Adjust the duration as needed
                                curve: Curves
                                    .easeInOut, // Adjust the curve as needed
                              );
                              Navigator.pop(context);
                            })
                          }),
                  ListTile(
                      title: Text(
                        "Skills",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: on_pressed[0]
                                ? Colors.white
                                : Colors.white.withOpacity(0.7),
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w300,
                            fontSize: 16),
                      ),
                      onTap: () => {
                            setState(() {
                              on_pressed = [false, false, true, false, false];
                              pageController.animateToPage(
                                2,
                                duration: Duration(
                                    milliseconds:
                                        500), // Adjust the duration as needed
                                curve: Curves
                                    .easeInOut, // Adjust the curve as needed
                              );
                              Navigator.pop(context);
                            })
                          }),
                  ListTile(
                      title: Text(
                        "Portfolio",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: on_pressed[0]
                                ? Colors.white
                                : Colors.white.withOpacity(0.7),
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w300,
                            fontSize: 16),
                      ),
                      onTap: () => {
                            setState(() {
                              on_pressed = [false, false, false, true, false];
                              pageController.animateToPage(
                                3,
                                duration: Duration(
                                    milliseconds:
                                        500), // Adjust the duration as needed
                                curve: Curves
                                    .easeInOut, // Adjust the curve as needed
                              );
                              Navigator.pop(context);
                            })
                          }),
                  ListTile(
                      title: Text(
                        "Get In Touch",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: on_pressed[0]
                                ? Colors.white
                                : Colors.white.withOpacity(0.7),
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w300,
                            fontSize: 16),
                      ),
                      onTap: () => {
                            setState(() {
                              on_pressed = [false, false, false, false, true];
                              pageController.animateToPage(
                                4,
                                duration: Duration(
                                    milliseconds:
                                        500), // Adjust the duration as needed
                                curve: Curves
                                    .easeInOut, // Adjust the curve as needed
                              );
                              Navigator.pop(context);
                            })
                          }),
                ],
              ),
            ),
            appBar: AppBar(
                backgroundColor: Color.fromARGB(
                    255, 78, 95, 124), //Color(0xFF1D1414).withOpacity(0.96),
                elevation: 8,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Tasnim Dridi',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "AlexBrush",
                            fontSize: 26),
                      ),
                    ),
                  ],
                )),
            body: PageView.builder(
              allowImplicitScrolling: true,
              controller: pageController,
              scrollDirection: Axis.vertical,
              itemCount: pages.length,
              onPageChanged: (index) {
                setState(() {
                  on_pressed = [false, false, false, false, false];
                  on_pressed[index] = true;
                });
              },
              itemBuilder: (context, index) {
                return pages[index];
              },
            ));
  }
}
