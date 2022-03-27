import 'package:auto_size_text/auto_size_text.dart';
import 'package:beach_hack_website/constants/GradientText.dart';
import 'package:beach_hack_website/pages/landing_page.dart';
import 'package:beach_hack_website/routes/navbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:timelines/timelines.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileView extends StatefulWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  _MobileViewState createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
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

  var urlOfTechEvents = [
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/codescreen.png?alt=media&token=a8e9d652-0e92-4258-83cc-f5c26e55e530",
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/htmlscreen.png?alt=media&token=92cab819-ab7f-4dd3-bb4c-be9a16e3834c",
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/iphonescreen.png?alt=media&token=11e91ece-7b06-4e30-ad80-11468b88cc6b",
  ];

  var urlOfGameEvents = [
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/pes.jpg?alt=media&token=a235bf14-2101-4c7e-9f5f-06522b1069f7",
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/valorant.png?alt=media&token=36f27eaa-8571-4915-a987-6b323184c931",
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/pubg.png?alt=media&token=81d85699-498a-49bb-8598-90bf6d5c83c9",
  ];

  var urlOfPrizes = [
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/gold.png?alt=media&token=096f095c-34aa-4dc0-9cae-912f071152fe",
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/blue.png?alt=media&token=875af480-ee68-454f-9c0a-96bc0a7071c0",
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/brown.png?alt=media&token=80a73dba-9bdd-4654-9c71-595b9d62c134",
  ];

  var logos = [
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/LOGO_Dark.png?alt=media&token=762105dc-64db-4466-980f-c13497708121",
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/LOGO_BH_LIGHT.png?alt=media&token=b2ba8a6b-cae3-4016-8444-7d16f92c7859",
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/CodeLogo.png?alt=media&token=f67ca9bb-6232-40bd-96ae-66b3005d934b",
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/christ_logo.png?alt=media&token=965df78c-9dda-47a9-bb8c-8a1b00b690d7",
  ];

  //schedule

  var dates = [
    "1 Feb, 2022",
    // "4 Feb, 2022",
    "11 Feb, 2022",
    "14 Feb, 2022",
    "18 Feb, 2022",
    "19 Feb, 2022"
  ];

  var titles = [
    "Registration and Idea Submission",
    "Prototype Submission",
    "Publishing of shortlisted teams",
    "Inaugural ceremony and hackathon begins",
    "Concluding ceremony"
  ];

  var description = [
    "Last date to register and to submit idea for the event",
    "Last date to submit minimum viable product(MVP)",
    "Results of evaluation on the basis of MVP",
    "Marks the starting of 24-hour hackathon",
    "Final presentation and prize distribution"
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

  var _subject_controller = TextEditingController();

  String _email_body = "";

  String _email_subject = "Help";
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
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/bg_img_bg.jpeg",
                  ),
                  // image: FadeInImage.assetNetwork(
                  //     placeholder: kTransparentImage, image: "image"),
                  // image: NetworkImage(
                  //     'https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/bg_img_original.jpg?alt=media&token=ee0db930-cfe9-48a2-9ff8-83edd136c3e3'),

                  // image: FadeInImage(placeholder: kTransparentImage, image: "image")
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  // const Align(alignment: Alignment.topCenter, child: NavBar()),
                  // FadeInImage.assetNetwork(
                  //     placeholder: "assets/images/bg_img_bg.jpeg",
                  //     placeholderFit: BoxFit.cover,
                  //     width: MediaQuery.of(context).size.width,
                  //     height: MediaQuery.of(context).size.height,
                  //     fit: BoxFit.cover,
                  //     image:
                  //         "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/bg_img_original.jpg?alt=media&token=bcd05f3d-6019-4fef-bb69-bba08a8a1706"),
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
                      height: 20,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff242529),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "BEACH HACK 4",
                                // gradient: gradientBlue,

                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              AutoSizeText(
                                "Beach Hack is a 24 hour hackathon, which brings computer programmers and software developers, to collaborate and find an innovative solution to some of the problems we face in our society, and simultaneously improve their critical and creative thinking. Beach Hack 4, the much awaited 4th season of beach hack, is to be held on the 20th and 21st of February 2022, on the shores of Cherai Beach, Kochi. It creates a space for college students and provides them with a helping hand to think from a different perspective.",
                                textAlign: TextAlign.justify,
                                maxFontSize: 18,
                                minFontSize: 12,
                                style: TextStyle(
                                    color: Color(0xff898989),
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      height: 20,
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
                              children: [
                                // GradientText(
                                //   "240",
                                //   gradient: gradientOrange,
                                //   style: TextStyle(
                                //       fontFamily: 'Poppins',
                                //       fontSize: 30,
                                //       fontWeight: FontWeight.w700),
                                // ),
                                Image.asset(
                                  "assets/images/250+.png",
                                  fit: BoxFit.contain,
                                  width: 70,
                                  height: 70,
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
                              children: [
                                Image.asset(
                                  "assets/images/60.png",
                                  fit: BoxFit.contain,
                                  width: 70,
                                  height: 70,
                                ),
                                // GradientText(
                                //   "60",
                                //   gradient: gradientPurple,
                                //   style: TextStyle(
                                //       fontFamily: 'Poppins',
                                //       fontSize: 30,
                                //       fontWeight: FontWeight.w700),
                                // ),
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
                              children: [
                                Image.asset(
                                  "assets/images/148_edited.png",
                                  fit: BoxFit.fitWidth,
                                  width: 90,
                                  height: 70,
                                ),
                                // GradientText(
                                //   "148hrs",
                                //   gradient: gradientGreen,
                                //   style: TextStyle(
                                //       fontFamily: 'Poppins',
                                //       fontSize: 30,
                                //       fontWeight: FontWeight.w700),
                                // ),
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
                              children: [
                                Image.asset(
                                  "assets/images/30.png",
                                  fit: BoxFit.contain,
                                  width: 70,
                                  height: 70,
                                ),
                                // GradientText(
                                //   "30",
                                //   gradient: gradientPink,
                                //   style: TextStyle(
                                //       fontFamily: 'Poppins',
                                //       fontSize: 30,
                                //       fontWeight: FontWeight.w700),
                                // ),
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
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          gradient: gradientPurple2,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        // padding: const EdgeInsets.all(60.0),

                        padding: const EdgeInsets.all(30.0),
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
                            // Text(
                            //   "",
                            //   style: TextStyle(
                            //     color: Colors.white,
                            //     fontFamily: 'Poppins',
                            //     fontWeight: FontWeight.w300,
                            //     fontSize: 24,
                            //   ),
                            // ),
                            // const SizedBox(
                            //   width: 60,
                            // ),
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
                    SizedBox(
                      height: 20,
                    ),
                    CarouselSlider.builder(
                      itemCount: 8,
                      itemBuilder: (BuildContext context, int itemIndex,
                              int pageViewIndex) =>
                          ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: FadeInImage.memoryNetwork(
                          placeholder: kTransparentImage,
                          image: urlOfMoments[itemIndex],
                          fit: BoxFit.cover,
                        ),
                      ),
                      options: CarouselOptions(
                        // height: screenWidth * 0.95,
                        aspectRatio: 16 / 9,

                        enlargeCenterPage: true,
                        viewportFraction: 0.8,
                        scrollDirection: Axis.horizontal,
                        // autoPlayAnimationDuration: const Duration(seconds: 1),
                        // autoPlayInterval: Duration(seconds: 3),
                        // autoPlay: true,
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
                            urlOfTechEvents[itemIndex],
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
                        autoPlayInterval: Duration(seconds: 5),
                        autoPlay: true,
                      ),
                    ),

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
                            urlOfGameEvents[itemIndex],
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
                        autoPlayInterval: Duration(seconds: 5),
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
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    screenWidth * 0.05,
                    screenHeight * 0.08,
                    screenWidth * 0.05,
                    screenHeight * 0.08),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Prizes",
                        // gradient: gradientBlue,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 30,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff242529),
                      ),
                      padding: EdgeInsets.fromLTRB(0, 25, 0, 25),
                      width: screenWidth,
                      child: Column(
                        children: [
                          FadeInImage.assetNetwork(
                            placeholder: "assets/images/load_gif.gif",
                            image: urlOfPrizes[0],
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
                              fontSize: 35.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff242529),
                      ),
                      padding: EdgeInsets.fromLTRB(0, 25, 0, 25),
                      width: screenWidth,
                      child: Column(
                        children: [
                          FadeInImage.assetNetwork(
                            placeholder: "assets/images/load_gif.gif",
                            image: urlOfPrizes[1],
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
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff242529),
                      ),
                      padding: EdgeInsets.fromLTRB(0, 25, 0, 25),
                      width: screenWidth,
                      child: Column(
                        children: [
                          FadeInImage.assetNetwork(
                            placeholder: "assets/images/load_gif.gif",
                            image: urlOfPrizes[2],
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
                              fontSize: 20.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.none,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
//Schedule

            Container(
              width: MediaQuery.of(context).size.width,

              // height: MediaQuery.of(context).size.height,
              // padding: EdgeInsets.fromLTRB(screenWidth * 0.05,
              //     screenHeight * 0.08, screenWidth * 0.05, screenHeight * 0.08),
              color: const Color.fromRGBO(36, 37, 41, 1),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(screenWidth * 0.05,
                          screenHeight * 0.08, screenWidth * 0.05, 0),
                      child: Text(
                        "Schedule",
                        // gradient: gradientBlue,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 30,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Timeline.tileBuilder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    theme: TimelineThemeData(
                      nodePosition: 0.1,
                      connectorTheme: ConnectorThemeData(
                        thickness: 3.0,
                        color: Colors.blue,
                      ),
                      indicatorTheme: IndicatorThemeData(
                        size: 15.0,
                      ),
                    ),
                    // padding: EdgeInsets.symmetric(vertical: 20.0),
                    builder: TimelineTileBuilder.fromStyle(
                      contentsAlign: ContentsAlign.basic,
                      indicatorStyle: IndicatorStyle.outlined,
                      contentsBuilder: (context, index) {
                        print(index.toString());
                        return Padding(
                          padding:
                              const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 24.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black,
                            ),
                            width: screenWidth,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(
                                  screenWidth * 0.05,
                                  screenHeight * 0.05,
                                  screenWidth * 0.05,
                                  screenHeight * 0.05),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    dates[index],
                                    style: TextStyle(
                                      color: Colors.blue[300],
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w800,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    titles[index],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    description[index],
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: 5,
                    ),
                  ),
                ],
              ),
            ),

            //about us

            Container(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.fromLTRB(screenWidth * 0.05,
                  screenHeight * 0.08, screenWidth * 0.05, screenHeight * 0.08),
              color: const Color.fromRGBO(36, 37, 41, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Who Are We?',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    radius: screenWidth * 0.25,
                    backgroundColor: Colors.black,
                    child: FadeInImage.assetNetwork(
                      image: logos[2],
                      fit: BoxFit.cover,
                      placeholder: "assets/images/load_gif.gif",
                      height: 150,
                      width: 150,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  AutoSizeText(
                    'CODE -THE COMMUNITY OF DEVELOPERS',
                    textAlign: TextAlign.center,
                    minFontSize: 14,
                    maxFontSize: 18,
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 25),
                  AutoSizeText(
                    'The Community of Developers, CODe, the face of, Computer science department, Christ college of Engineering was founded on October 6th, 2018. It serves to augment the professional outlook of students, intends to foster practical knowledge and equip them to be socially responsible engineers. CODe with both faculty and students as its members is a very active association and it organises various programmes such as workshops, competitions, keynote speeches, webinars which aid to bridge the gap between theory and practice.Beach Hack, the first ever beach hackathon of South India was conducted by CODe and has become a celebrated name among students all over South India since its inception in February 2019. This association aims to enhance technical and extra curricular activities of students apart from regular curriculum.',
                    textAlign: TextAlign.justify,
                    maxFontSize: 16,
                    minFontSize: 12,
                    style: TextStyle(
                      color: Color(0xff928D8D),
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.none,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.08),
                  //
                  CircleAvatar(
                    radius: screenWidth * 0.25,
                    backgroundColor: Colors.black,
                    child: FadeInImage.assetNetwork(
                      image: logos[3],
                      fit: BoxFit.cover,
                      height: 150,
                      width: 150,
                      placeholder: "assets/images/load_gif.gif",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  AutoSizeText(
                    'CHRIST COLLEGE OF ENGINEERING',
                    minFontSize: 14,
                    maxFontSize: 18,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 25),
                  AutoSizeText(
                    'Christ College of Engineering established in 2015, is managed by the Carmelites of Mary Immaculate (CMI) congregation of Devamatha Province, Thrissur. CCE is a part of Christ Educational and Charitable Trust, Irinjalakuda and is affiliated to the APJ Abdul Kalam Technological University, Trivandrum, Kerala. CMI institutes are known for providing quality education and they have set up top notch educational institutes all over south India. Christ college of engineering aims to follow the footsteps of many illustrious institutions that the CMI congregation has established and that are annually churning out holistically formed global citizens. The college aims to be a premier professional institution delivering world-class research based education to the students with a view to make them global citizens, effective communicators, responsible leaders and path breaking entrepreneurs. Each and every professional institution is unique and different. What sets our college apart from other professional institutions is how it goes about setting and implementing priorities.',
                    maxFontSize: 16,
                    minFontSize: 12,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xff928D8D),
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.none,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: screenWidth,
              color: Colors.black,
              padding: EdgeInsets.fromLTRB(screenWidth * 0.05,
                  screenHeight * 0.08, screenWidth * 0.05, screenHeight * 0.08),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CONTACT US',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  const Text(
                    '  Want to tell us something?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.none,
                      height: 1.5,
                    ),
                  ),
                  Container(
                    height: screenHeight * 0.15,
                    width: screenWidth,
                    child: TextField(
                      minLines: 6,
                      maxLines: 7,
                      controller: _subject_controller,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        hintText: 'Write something then..',
                        hintStyle: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xff898989),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        fillColor: Color(0xff242529),
                        filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '  Email',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.none,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.12,
                    width: screenWidth,
                    child: const TextField(
                      minLines: 3,
                      maxLines: 4,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'someone@xyz.com',
                        hintStyle: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xff898989),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        fillColor: Color(0xff242529),
                        filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xff0596FF),
                      ),
                      width: screenWidth * 0.25,
                      height: 30,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          onPressed: () {
                            _email_body = _subject_controller.text;
                            _sendEmail(
                                "code@cce.edu.in", _email_subject, _email_body);
                          },
                          child: Text("Submit")))
                ],
              ),
            ),

            //footer

            Container(
              color: const Color.fromRGBO(36, 37, 41, 1),
              padding: EdgeInsets.fromLTRB(30, 20, 30, 30),
              width: screenWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        //Made with ♥ CODe 2021
                        //Made with Flutter
                        children: const [
                          CircleAvatar(
                            radius: 12.0,
                            backgroundImage: AssetImage('assets/images/fb.png'),
                            backgroundColor: Colors.transparent,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 12.0,
                            backgroundImage:
                                AssetImage('assets/images/twitter.png'),
                            backgroundColor: Colors.transparent,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 12.0,
                            backgroundImage:
                                AssetImage('assets/images/linkedin.png'),
                            backgroundColor: Colors.transparent,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 12.0,
                            backgroundImage:
                                AssetImage('assets/images/insta.png'),
                            backgroundColor: Colors.transparent,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            "  Made with 🤍 CODe 2021\n",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontSize: 10),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            CircleAvatar(
                              radius: 7.0,
                              backgroundImage:
                                  AssetImage('assets/images/flutter.png'),
                              backgroundColor: Colors.transparent,
                            ),
                            Text(
                              " Made using Flutter",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 10),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

_sendEmail(String toMailId, String subject, String body) async {
  var url = 'mailto:$toMailId?subject=$subject&body=$body';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
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
              image: NetworkImage(image),
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
