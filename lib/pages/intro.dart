import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:beach_hack_4/constants/GradientText.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.fromLTRB(screenWidth * 0.05, screenHeight * 0.08,
            screenWidth * 0.05, screenHeight * 0.08),
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
              width: screenWidth * 0.25,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: (MediaQuery.of(context).size.width / 7) * 2 - 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 5,
                    fit: FlexFit.loose,
                    child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff242529),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(
                              screenWidth * 0.02,
                              screenHeight * 0.03,
                              screenWidth * 0.02,
                              screenHeight * 0.02),
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
                                height: 5,
                              ),
                              AutoSizeText(
                                "Beach Hack is a 24 hour hackathon, which brings computer programmers and software developers, to collaborate and find an innovative solution to some of the problems we face in our society, and simultaneously improve their critical and creative thinking. Beach Hack 4, the much awaited 4th season of beach hack, is to be held on the 20th and 21st of May 2022, on the shores of Azhikode Beach, Kodungallur. It creates a space for college students and provides them with a helping hand to think from a different perspective.",
                                maxFontSize: 22,
                                minFontSize: 4,
                                maxLines: 7,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    color: Color(0xff898989),
                                    fontFamily: 'Poppins',
                                    fontSize: 22,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        )),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    flex: 2,
                    child: GridView(
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
                                    fontSize: 35,
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
                  )
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
                      "THEME : Develop solutions for specially abled to make their lives easier",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xff242529),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(60.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "PROBLEM STATEMENTS : \n",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                      ),
                    ),
                    SelectableText(
                      "\u2022 Develop an affordable solution for mute people with limited muscle movement to communicate with others.\n\n\u2022 Develop a solution to provide specially abled children with inclusive learning experience.\n\n\u2022 Develop a solution to make deaf people aware of their surroundings. For instance if someone calls their name in the background or some other sounds which require their attention, it should notify the user.\n\n\u2022 Develop a solution to make the internet more accessible to people with sensory disabilities.\n\n\u2022 Develop a software that helps people who doesn't have the ability to speak or move to communicate with others.\n\n\u2022 Specially abled youngsters are deprived of both physical and mental activities since they are restricted to their homes. Develop a software that will entertain and enhance their physical and mental abilities.\n ​",
                      style: TextStyle(
                        color: Color(0xff898989),
                        fontSize: 20,
                        fontFamily: "Poppins",
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Divider(
                          color: Color(0xff898989),
                          endIndent: 20,
                        )),
                        Text(
                          "OR",
                          style: TextStyle(
                            color: Color(0xff898989),
                            fontFamily: "Poppins",
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: Color(0xff898989),
                            indent: 20,
                          ),
                        ),
                      ],
                    ),
                    SelectableText(
                      "\n\u2022 Open Statement",
                      style: TextStyle(
                        color: Color(0xff898989),
                        fontSize: 20,
                        fontFamily: "Poppins",
                      ),
                    ),
                    SelectableText(
                      "    You can choose any problem statement related to the theme and find solution to it.\n",
                      style: TextStyle(
                        color: Color(0xff898989),
                        fontSize: 18,
                        fontFamily: "Poppins",
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Color(0xff898989),
                          ),
                        ),
                      ],
                    ),
                    SelectableText(
                      "\nNote: We mostly support software-based products. The inclusion of hardware is optional. However, if your solution only requires basic hardware, that's fine. A solution that is entirely hardware-based is not supported. Also it's completely fine if your solution only requires software and doesn't require any hardware.",
                      style: TextStyle(
                        color: Color(0xff898989),
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        fontFamily: "Poppins",
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(60, 60, 60, 60),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0xff242529), width: 2),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Shortlisted Teams",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: RadialGradient(colors: [
                        Color.fromARGB(255, 69, 68, 68),
                        Colors.black,
                      ], radius: 2, focal: Alignment.center),
                    ),
                    child: GridView(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 2,
                        crossAxisCount: 3,
                        childAspectRatio: 5,
                      ),
                      children: <Widget>[
                        Container(
                          color: Colors.black,
                          child: Center(
                            child: Text(
                              "Josephites",
                              style: textStyleOfShortlistedTeams,
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.black,
                          child: Center(
                            child: Text(
                              "Team UEC",
                              style: textStyleOfShortlistedTeams,
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.black,
                          child: Center(
                            child: Text(
                              "MindHacks",
                              style: textStyleOfShortlistedTeams,
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.black,
                          child: Center(
                            child: Text(
                              "CHROME",
                              style: textStyleOfShortlistedTeams,
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.black,
                          child: Center(
                            child: Text(
                              "Broskis",
                              style: textStyleOfShortlistedTeams,
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.black,
                          child: Center(
                            child: Text(
                              "Fin-Eazy",
                              style: textStyleOfShortlistedTeams,
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.black,
                          child: Center(
                            child: Text(
                              "Renegades",
                              style: textStyleOfShortlistedTeams,
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.black,
                          child: Center(
                            child: Text(
                              "MAVS",
                              style: textStyleOfShortlistedTeams,
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.black,
                          child: Center(
                            child: Text(
                              "Cypher 2.0",
                              style: textStyleOfShortlistedTeams,
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.black,
                        ),
                        Container(
                          color: Colors.black,
                          child: Center(
                            child: Text(
                              "Monster Killer",
                              style: textStyleOfShortlistedTeams,
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xff242529),
                  borderRadius: BorderRadius.circular(20)),
              height: screenWidth * 0.4,
              child: Stack(
                children: [
                  Container(
                    child: Lottie.network(
                      'https://assets6.lottiefiles.com/packages/lf20_dwm2hi59.json',
                      animate: true,
                      width: screenWidth,
                      height: screenWidth * 0.4,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, -0.8),
                    child: AutoSizeText(
                      "Winners",
                      maxLines: 1,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontSize: 60,
                      ),
                    ),
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Fin-Eazy",
                          style: textStyleOfShortlistedTeams,
                        ),
                        Text(
                          "Monster Killer",
                          style: textStyleOfShortlistedTeams,
                        ),
                        Text(
                          "MindHacks",
                          style: textStyleOfShortlistedTeams,
                        ),
                      ],
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

TextStyle textStyleOfShortlistedTeams = TextStyle(
  color: Color(0xff898989),
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w700,
  fontSize: 30,
);
