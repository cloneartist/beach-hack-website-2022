import 'package:auto_size_text/auto_size_text.dart';
import 'package:beach_hack_website/constants/GradientText.dart';
import 'package:beach_hack_website/pages/landing_page.dart';
import 'package:beach_hack_website/routes/navbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileView extends StatefulWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  _MobileViewState createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  var techImages = [
    "assets/images/codescreen.png",
    "assets/images/htmlscreen.png",
    "assets/images/iphonescreen.png"
  ];
  var techTitle = ["Coding Competition", "Web Development", "App Development"];
  var techSubtitle = [
    "Are you ready to turn caffeine to <Code/>?",
    "If you think math is hard, try web design",
    "Feeling cold? Turn on Android Studio!"
  ];
  var techContent = [
    "This is what AWESOME\nlooks like",
    "You are CSS to my HTML\nHop in!",
    "Let\'s cook something hot!"
  ];

  //Gaming

  var gamingImages = [
    "assets/images/pes.jpg",
    "assets/images/valorant.png",
    "assets/images/pubg.png"
  ];
  var gamingTitle = ["PES", "Valorant", "PUBG"];
  var gamingContent = [
    "The pitch is Yours!",
    "Rise to Radiant",
    "Have you had your\nCHICKEN DINNER?"
  ];
  var gamingSubtitle = [
    "PES\nTOURNAMENT",
    "VALORANT\nTOURNAMENT",
    "PUBG\nTOURNAMENT"
  ];

  //urlOfMoments

  var urlOfMoments = [
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/6.jpeg?alt=media&token=c9e1747b-35dd-451e-ab56-f6f4a44f9071",
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/3.jpeg?alt=media&token=1467c052-41e1-4d15-a155-e1576d1393ae",
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/1.jpeg?alt=media&token=b12e4d9a-d2b1-4fc4-a226-03a5208778c7",
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/2.jpeg?alt=media&token=124c7464-1296-48c4-be32-1c1eeaa3baa9",
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/4.jpeg?alt=media&token=b361e571-3de6-4b35-8692-bc9d8d17d8e8",
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/5.jpeg?alt=media&token=a8811b9d-6280-4d64-bcdd-6a76b9dc1245",
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/7.jpeg?alt=media&token=811ceee6-a709-4871-a1e1-9afa93aae47c",
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/8.jpeg?alt=media&token=510b60d8-c8a2-4dd0-96db-36ed01fc3adb"
  ];

  var shadow = [
    Shadow(
      offset: Offset(5.0, 5.0),
      blurRadius: 5.0,
      color: Color.fromARGB(255, 0, 0, 0),
    ),
    Shadow(
      offset: Offset(5.0, 5.0),
      blurRadius: 8.0,
      color: Color.fromARGB(125, 0, 0, 255),
    ),
  ];

  TextStyle styleOfDrawerText = const TextStyle(
    color: Colors.white,
    fontFamily: "Poppins",
    fontWeight: FontWeight.w700,
    fontSize: 20,
  );
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    var cardWidth = screenWidth;
    var cardHeight = screenHeight * 0.5;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        // leading: Image.asset(
        //   "assets/images/LOGO_BH_LIGHT.png",
        //   fit: BoxFit.cover,
        // ),
        backgroundColor: Colors.transparent,
        toolbarOpacity: 1,
        foregroundColor: Colors.white,
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset(
                "assets/images/LOGO_BH_LIGHT.png",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Register",
                style: styleOfDrawerText,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Home",
                style: styleOfDrawerText,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Schedule",
                style: styleOfDrawerText,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Events",
                style: styleOfDrawerText,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "About",
                style: styleOfDrawerText,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Contact Us",
                style: styleOfDrawerText,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              // decoration: const BoxDecoration(
              //   image: DecorationImage(
              //     // image: FadeInImage.assetNetwork(
              //     //     placeholder: kTransparentImage, image: "image"),
              //     image: NetworkImage(
              //         'https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/bg_img_original.jpg?alt=media&token=ee0db930-cfe9-48a2-9ff8-83edd136c3e3'),

              //     // image: FadeInImage(placeholder: kTransparentImage, image: "image")
              //     fit: BoxFit.cover,

              //   ),
              // ),
              child: Stack(
                children: [
                  // const Align(alignment: Alignment.topCenter, child: NavBar()),
                  FadeInImage.assetNetwork(
                      placeholder: "assets/images/matrix.gif",
                      placeholderFit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      fit: BoxFit.cover,
                      image:
                          "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/bg_img_original.jpg?alt=media&token=ee0db930-cfe9-48a2-9ff8-83edd136c3e3"),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AutoSizeText(
                          "CODe\nPRESENTS",
                          // 'BEACH HACK \nPRESENTS\n',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              color: Colors.white,
                              shadows: shadow,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 6.0),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AutoSizeText.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'BEACH',
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontFamily: "Poppins",
                                    shadows: shadow,
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: 6.4),
                              ),
                              TextSpan(
                                text: ' HACK 4',
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontFamily: "Poppins",
                                    shadows: shadow,
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: 6.4),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 56,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/devfolio.png",
                                        width: 40,
                                        height: 50,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Column(
                                        children: [
                                          SizedBox(
                                            height: 12,
                                            child: Text(
                                              'Apply with\n',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
                                          ),
                                          Text("Devfolio",
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontSize: 18)),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 56,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Color(0xff5865F2),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/discord.png",
                                        width: 40,
                                        height: 30,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        children: [
                                          SizedBox(
                                            height: 12,
                                            child: Text(
                                              'JOIN US ON\n',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
                                          ),
                                          Text("Discord",
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontSize: 18)),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                      ],
                    ),
                  )
                ],
              ),
            ),

            //intro

            Container(
              color: Colors.black,
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    screenWidth * 0.05,
                    screenHeight * 0.08,
                    screenWidth * 0.05,
                    screenHeight * 0.08),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Wrap(
                    //   // crossAxisAlignment: CrossAxisAlignment.start,
                    //   spacing: 1,

                    //   direction: Axis.vertical,
                    //   children: const [
                    //     GradientText(
                    //       " BEACH HACK 4",
                    //       gradient: gradientBlue,
                    //       style: TextStyle(
                    //           fontSize: 48,
                    //           fontFamily: 'Poppins',
                    //           fontWeight: FontWeight.w700),
                    //     ),
                    //     GradientText(
                    //       " THE LEGACY",
                    //       gradient: gradientBlue,
                    //       style: TextStyle(
                    //           fontSize: 40,
                    //           fontFamily: 'Poppins',
                    //           fontWeight: FontWeight.w700),
                    //     ),
                    //     GradientText(
                    //       " CONTINUES",
                    //       gradient: gradientBlue,
                    //       style: TextStyle(
                    //           fontSize: 34,
                    //           fontFamily: 'Poppins',
                    //           fontWeight: FontWeight.w700),
                    //     ),
                    //   ],
                    // ),
                    Image.asset(
                      "assets/images/test.png",
                      width: screenWidth * 0.65,
                      fit: BoxFit.fitWidth,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff242529),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              GradientText(
                                "BEACH HACK 4",
                                gradient: gradientBlue,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              AutoSizeText(
                                "Beach Hack 4 is the much anticipated fourth edition of Beach Hackathon, which seeks to become a vital networking arena where talent and opportunity collide. It creates a space for college students and provides them with a helping hand to think from a different perspective. Its main goal is to create software solutions for people with special needs in order to help them overcome their physical and mental limitations.",
                                textAlign: TextAlign.justify,
                                maxLines: 12,
                                style: TextStyle(
                                    color: Color(0xff898989),
                                    fontFamily: 'Poppins',
                                    fontSize: 24,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: screenWidth - ((screenWidth * 0.05) * 2),
                      // height: screenWidth,
                      width: screenWidth - ((screenWidth * 0.05) * 2),
                      child: GridView(
                        scrollDirection: Axis.horizontal,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                        ),
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xff242529),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                // RichText(
                                //   text: TextSpan(
                                //     style: TextStyle(
                                //         fontFamily: 'Poppins',
                                //         fontSize: 40,
                                //         fontWeight: FontWeight.w700),
                                //     children: [
                                //       TextSpan(
                                //         text: '240',
                                //       ),
                                //       WidgetSpan(
                                //         child: Transform.translate(
                                //           offset:
                                //               const Offset(0.0, -50.0),
                                //           child: Text(
                                //             '+',
                                //             style: TextStyle(
                                //                 fontSize: 20,
                                //                 color: Colors.red,
                                //                 fontWeight:
                                //                     FontWeight.w700),
                                //           ),
                                //         ),
                                //       ),
                                //     ],
                                //   ),
                                // ),
                                GradientText(
                                  "240",
                                  gradient: gradientOrange,
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 40,
                                      fontWeight: FontWeight.w700),
                                ),

                                Text(
                                  "Participants",
                                  style: TextStyle(
                                      color: Color(0xff898989),
                                      fontFamily: 'Poppins',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xff242529),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                GradientText(
                                  "60",
                                  gradient: gradientPurple,
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 40,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "Teams",
                                  style: TextStyle(
                                      color: Color(0xff898989),
                                      fontFamily: 'Poppins',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xff242529),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                GradientText(
                                  "148hrs",
                                  gradient: gradientGreen,
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 40,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "spent coding",
                                  style: TextStyle(
                                      color: Color(0xff898989),
                                      fontFamily: 'Poppins',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xff242529),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                GradientText(
                                  "30",
                                  gradient: gradientPink,
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 40,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "Colleges",
                                  style: TextStyle(
                                      color: Color(0xff898989),
                                      fontFamily: 'Poppins',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          gradient: gradientPurple2,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(60.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "THEME\nCOMING SOON!",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                fontSize: 30,
                              ),
                            ),
                            Text(
                              "",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w300,
                                fontSize: 24,
                              ),
                            ),
                            const SizedBox(
                              width: 60,
                            ),
                            // Lottie.network(
                            //   "https://assets9.lottiefiles.com/private_files/lf30_2u9Zt5.json",
                            //   animate: true,
                            //   fit: BoxFit.contain,
                            // ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff242529),
                      ),
                      width: screenWidth,
                      height: screenWidth * 0.25,
                      child: Center(
                          child: Text(
                        "Moments",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )),
                    ),

                    CarouselSlider.builder(
                      itemCount: 8,
                      itemBuilder: (BuildContext context, int itemIndex,
                              int pageViewIndex) =>
                          FadeInImage.memoryNetwork(
                        placeholder: kTransparentImage,
                        image: urlOfMoments[itemIndex],
                      ),
                      options: CarouselOptions(
                        // height: screenWidth * 0.95,
                        aspectRatio: 1.0,
                        enlargeCenterPage: true,
                        viewportFraction: 0.8,
                        scrollDirection: Axis.horizontal,
                        autoPlayAnimationDuration: const Duration(seconds: 1),
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlay: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: screenWidth,
              color: Color(0xff242529),
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    screenWidth * 0.05,
                    screenHeight * 0.08,
                    screenWidth * 0.05,
                    screenHeight * 0.08),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Container(
                    //   width: screenWidth,
                    //   height: screenWidth * 0.25,
                    //   decoration: BoxDecoration(
                    //     gradient: gradientPurple1,
                    //     borderRadius: BorderRadius.circular(20),
                    //   ),
                    //   child: Center(
                    //       child: Text(
                    //     "Technical Events",
                    //     style: TextStyle(
                    //       fontSize: 20,
                    //       fontFamily: "Poppins",
                    //       fontWeight: FontWeight.bold,
                    //       color: Colors.white,
                    //     ),
                    //   )),
                    // ),
                    Text(
                      "Technical Events",
                      // gradient: gradientBlue,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CarouselSlider.builder(
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int itemIndex,
                              int pageViewIndex) =>
                          Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)),
                        width: cardWidth,
                        child: buildImageCard(
                            false,
                            itemIndex,
                            context,
                            techImages[itemIndex],
                            techTitle[itemIndex],
                            techSubtitle[itemIndex],
                            techContent[itemIndex]),
                      ),
                      options: CarouselOptions(
                        // height: screenWidth * 0.95,
                        aspectRatio: 1.0,
                        enlargeCenterPage: true,
                        viewportFraction: 0.8,
                        scrollDirection: Axis.horizontal,
                        autoPlayAnimationDuration: const Duration(seconds: 1),
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlay: true,
                      ),
                    ),
                    // Container(
                    //   width: screenWidth,
                    //   height: screenWidth * 0.25,
                    //   decoration: BoxDecoration(
                    //     gradient: gradientPurple1,
                    //     borderRadius: BorderRadius.circular(20),
                    //   ),
                    //   child: Center(
                    //       child: Text(
                    //     "Gaming Events",
                    //     style: TextStyle(
                    //       fontSize: 20,
                    //       fontFamily: "Poppins",
                    //       fontWeight: FontWeight.bold,
                    //       color: Colors.white,
                    //     ),
                    //   )),
                    // ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Gaming Events",
                      // gradient: gradientBlue,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 30,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CarouselSlider.builder(
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int itemIndex,
                              int pageViewIndex) =>
                          Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)),
                        width: cardWidth,
                        child: buildImageCard(
                            true,
                            itemIndex,
                            context,
                            gamingImages[itemIndex],
                            gamingTitle[itemIndex],
                            gamingSubtitle[itemIndex],
                            gamingContent[itemIndex]),
                      ),
                      options: CarouselOptions(
                        // height: screenWidth * 0.95,
                        aspectRatio: 1.0,
                        enlargeCenterPage: true,
                        viewportFraction: 0.8,
                        scrollDirection: Axis.horizontal,
                        autoPlayAnimationDuration: const Duration(seconds: 1),
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlay: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
                color: Colors.black,
                width: screenWidth,
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/gold.png',
                      width: 150,
                      height: 150,
                      fit: BoxFit.contain,
                    ),
                    Text(
                      '1st',
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 35.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w900,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Text(
                      "₹ 50,000",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    SizedBox(height: 20),
                    Image.asset(
                      'assets/images/blue.png',
                      width: 135,
                      height: 135,
                      fit: BoxFit.contain,
                    ),
                    Text(
                      '2nd',
                      style: TextStyle(
                        color: Color.fromRGBO(57, 71, 196, 1),
                        fontSize: 35.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w900,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Text(
                      "₹ 30,000",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    SizedBox(height: 20),
                    Image.asset(
                      'assets/images/brown.png',
                      width: 120,
                      height: 120,
                      fit: BoxFit.contain,
                    ),
                    const Center(
                      child: Text(
                        '3rd',
                        style: TextStyle(
                          color: Color.fromRGBO(248, 93, 37, 1),
                          fontSize: 35.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w900,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    Text(
                      "₹ 20,000",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none,
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

const gradient = LinearGradient(
  colors: [Color.fromRGBO(37, 88, 188, 1), Color.fromRGBO(10, 89, 241, 1)],
);

const gradient2nd = LinearGradient(
  colors: [Color.fromRGBO(57, 71, 196, 1), Color.fromRGBO(168, 175, 245, 1)],
);
const gradient1st = LinearGradient(
  colors: [Color.fromRGBO(147, 117, 8, 1), Color.fromRGBO(254, 252, 0, 1)],
);

const gradient3rd = LinearGradient(
  colors: [Color.fromRGBO(248, 93, 37, 1), Color.fromRGBO(250, 195, 174, 1)],
);

const gradientBlue = LinearGradient(
  colors: [Color(0xff097AFF), Color(0xff3669A5)],
);

const gradientOrange = LinearGradient(
  colors: [Color(0xffF13838), Color(0xffFE9371)],
);
const gradientGreen = LinearGradient(
  colors: [Color(0xff1CDA5D), Color(0xff34E145)],
);

const gradientPink = LinearGradient(
  colors: [Color(0xffFE1531), Color(0xffFF70F9)],
);
const gradientPurple = LinearGradient(
  colors: [Color(0xffB068F8), Color(0xff3E00A4)],
);
const gradientPurple1 = LinearGradient(
  colors: [Color(0xff4BB4EF), Color(0xff5B0878)],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

const gradientPurple2 = LinearGradient(
  colors: [Color(0xffB813E1), Color(0xffF52C99)],
);

TextStyle a1 = TextStyle(
  color: Colors.white,
  fontFamily: "Poppins",
  fontSize: 20,
  fontWeight: FontWeight.w700,
);
TextStyle a2 = TextStyle(
  color: Colors.white,
  fontFamily: "Poppins",
  fontSize: 16,
  fontWeight: FontWeight.w500,
);
TextStyle a3 = TextStyle(
  color: Colors.white,
  fontFamily: "Poppins",
  fontSize: 14,
  fontWeight: FontWeight.w400,
);
TextStyle a4 = TextStyle(
  color: Colors.white,
  fontFamily: "Poppins",
  fontSize: 12,
  fontWeight: FontWeight.w300,
);

Widget buildImageCard(bool isGame, int itemIndex, BuildContext context, image,
    title, subtitle, content) {
  var screenWidth = MediaQuery.of(context).size.width;
  List<bool> techFinished = [false, true, true];
  List<bool> gameFinished = [false, false, false];
  List<bool> Finished;
  isGame ? Finished = gameFinished : Finished = techFinished;
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
        child: Container(
          width: screenWidth,
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topCenter,
              fit: BoxFit.cover,
              image: AssetImage(image),
            ),
          ),
          child: isGame
              ? SizedBox()
              : Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    // width: screenWidth * 0.12,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(99, 199, 255, 0.5),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          topRight: Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 15, 10),
                      child: AutoSizeText(
                        title,
                        maxLines: 1,
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: AutoSizeText(
          subtitle,
          textAlign: TextAlign.center,
          maxLines: 2,
          style: const TextStyle(
              fontSize: 16, color: Colors.white, fontFamily: 'Poppins'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: AutoSizeText(
          content,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 11, color: Colors.grey, fontFamily: 'Poppins'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Container(
          width: screenWidth,
          height: 30,
          child: Finished[itemIndex]
              ? ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    switch (itemIndex) {
                      case 0:
                        break;
                      case 1:
                        // _launchURL();
                        break;
                      case 2:
                        break;
                      case 3:
                        break;
                    }
                  },
                  child: Text("Register"),
                )
              : ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    switch (itemIndex) {
                      case 0:
                        break;
                      case 1:
                        // _launchURL();
                        break;
                      case 2:
                        break;
                      case 3:
                        break;
                    }
                  },
                  child: Text(
                    "Ended!",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
    ],
  );
}
