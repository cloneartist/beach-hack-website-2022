import 'package:auto_size_text/auto_size_text.dart';
import 'package:beach_hack_website/constants/GradientText.dart';
import 'package:beach_hack_website/pages/landing_page.dart';
import 'package:beach_hack_website/routes/navbar.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MobileView extends StatefulWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  _MobileViewState createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
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
                    image: AssetImage('assets/images/bg_img_bg.jpeg'),
                    fit: BoxFit.cover),
              ),
              child: Stack(
                children: [
                  // const Align(alignment: Alignment.topCenter, child: NavBar()),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const AutoSizeText(
                          "CODe\nPRESENTS",
                          // 'BEACH HACK \nPRESENTS\n',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 6.0),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AutoSizeText.rich(
                          const TextSpan(
                            children: [
                              TextSpan(
                                text: 'BEACH',
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.black,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: 6.4),
                              ),
                              TextSpan(
                                text: ' HACK 4',
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontFamily: "Poppins",
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
                              "THEME : CHALLENGES OF SPECIALLY ABLED",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                fontSize: 30,
                              ),
                            ),
                            Text(
                              "Beach Hack is a 24 hour hackathon, which brings computer programmers and software developers, to collaborate and find an innovative solution to some of the problems we face in our society, and simultaneously improve their critical and creative thinking. Beach Hack 4, the much awaited 4th season of beach hack, is to be held on the 18th and 19th of February 2022, on the shores of Cherai Beach, Kochi. It creates a space for college students and provides them with a helping hand to think from a different perspective.",
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
                  ],
                ),
              ),
            ),
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
const gradientPurple2 = LinearGradient(
  colors: [Color(0xffB813E1), Color(0xffF52C99)],
);
