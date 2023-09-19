import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:card_swiper/card_swiper.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  List<String> imageAssets = [
    'images/IAC.png',
    'images/WhatsApp Image 2023-06-03 à 06.51.08.jpg',
    'images/IMG_3596.jpg',
    'images/me.jpg',
    'images/club.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 88, 112, 147).withOpacity(0.96),
      body: SingleChildScrollView(
        child: screenWidth > 850
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 50.0, left: 50, bottom: 20),
                    child: Text(
                      "About Me",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 60),
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 50),
                            child: SizedBox(
                              width: screenWidth / 2,
                              child: ListTile(
                                leading: Icon(
                                  Icons.circle,
                                  color: Colors.white,
                                  size: 6,
                                ),
                                title: Text(
                                  "3rd year engineering student at INSAT specialized in computer networks and telecommunications",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w300,
                                      fontSize: screenHeight < 600 ? 14 : 18),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 50),
                            child: SizedBox(
                              width: screenWidth / 2,
                              child: ListTile(
                                leading: Icon(
                                  Icons.circle,
                                  color: Colors.white,
                                  size: 6,
                                ), // Use a circle icon as a bullet point
                                title: Text(
                                  "Polyvalence : I am fascinated by computer networks, mobile development, the world of data and machine learning. And " +
                                      "thanks to my university and the clubs there, I gained a firm background in those fields. I thrive to always challenge " +
                                      "myself to gain new knowledge",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w300,
                                      fontSize: screenHeight < 600 ? 14 : 18),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 50),
                            child: SizedBox(
                              width: screenWidth / 2,
                              child: ListTile(
                                leading: Icon(
                                  Icons.circle,
                                  color: Colors.white,
                                  size: 6,
                                ), // Use a circle icon as a bullet point
                                title: Text(
                                  "Teamwork and communication : During my years at INSAT, I participated at various clubs and I was " +
                                      " the president of the INSAT Android club. So, I had the opportunity to learn how to work in a team and" +
                                      " how to motivate and lead my colleagues, I learned to be a good communicator and to solve problems wisely and quickly. " +
                                      "It also helped me to enter the professional world, meeting many interesting individuals at multiple events",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w300,
                                      fontSize: screenHeight < 600 ? 14 : 18),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                            height: screenHeight / 2,
                            width: screenWidth / 3,
                            child: Swiper(
                              itemCount: imageAssets.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Image.asset(
                                  imageAssets[index],
                                  fit: BoxFit.cover,
                                );
                              },
                              itemWidth:
                                  screenWidth / 3, // Adjust the width as needed
                              itemHeight: screenHeight / 2,
                              layout: SwiperLayout.TINDER,
                              pagination:
                                  SwiperPagination(), // Add pagination dots
                              // Add navigation controls (optional)
                            )),
                      ),
                    ],
                  )
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0, bottom: 20),
                    child: Text(
                      "About Me",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 50),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 10),
                    child: ListTile(
                      leading: Icon(
                        Icons.circle,
                        color: Colors.white,
                        size: 6,
                      ),
                      title: Text(
                        "3rd year engineering student at INSAT specialized in computer networks and telecommunications",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w300,
                            fontSize: screenHeight < 600 ? 14 : 18),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 10),
                    child: ListTile(
                      leading: Icon(
                        Icons.circle,
                        color: Colors.white,
                        size: 6,
                      ), // Use a circle icon as a bullet point
                      title: Text(
                        "Polyvalence : I am fascinated by computer networks, mobile development, the world of data and machine learning. And " +
                            "thanks to my university and the clubs there, I gained a firm background in those fields. I thrive to always challenge " +
                            "myself to gain new knowledge",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w300,
                            fontSize: screenHeight < 600 ? 14 : 18),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 10),
                    child: ListTile(
                      leading: Icon(
                        Icons.circle,
                        color: Colors.white,
                        size: 6,
                      ), // Use a circle icon as a bullet point
                      title: Text(
                        "Teamwork and communication : During my years at INSAT, I participated at various clubs and I was " +
                            " the president of the INSAT Android club. So, I had the opportunity to learn how to work in a team and" +
                            " how to motivate and lead my colleagues, I learned to be a good communicator and to solve problems wisely and quickly. " +
                            "It also helped me to enter the professional world, meeting many interesting individuals at multiple events",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w300,
                            fontSize: screenHeight < 600 ? 14 : 18),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Swiper(
                      itemCount: imageAssets.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Image.asset(
                          imageAssets[index],
                          fit: BoxFit.cover,
                        );
                      },
                      itemWidth: screenWidth * 0.8,
                      itemHeight: screenHeight / 2,
                      layout: SwiperLayout.TINDER,
                      pagination:
                          SwiperPagination(alignment: Alignment.bottomCenter),
                    ),
                  )
                ],
              ),
      ),
    );
  }
}
