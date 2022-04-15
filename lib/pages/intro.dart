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
                      "THEME : RELEASING SOON!",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                      ),
                    ),
                    // Row(
                    //   children: [
                    //     const Flexible(
                    //       flex: 5,
                    //       child: Text(
                    //         "Beach Hack is a 24 hour hackathon, which brings computer programmers and software developers, to collaborate and find an innovative solution to some of the problems we face in our society, and simultaneously improve their critical and creative thinking. Beach Hack 4, the much awaited 4th season of beach hack, is to be held on the 18th and 19th of February 2022, on the shores of Cherai Beach, Kochi. It creates a space for college students and provides them with a helping hand to think from a different perspective.",
                    //         style: TextStyle(
                    //           color: Colors.white,
                    //           fontFamily: 'Poppins',
                    //           fontWeight: FontWeight.w300,
                    //           fontSize: 24,
                    //         ),
                    //       ),
                    //     ),
                    //     const SizedBox(
                    //       width: 60,
                    //     ),
                    //     Flexible(
                    //       flex: 2,
                    //       child: Lottie.network(
                    //         "https://assets9.lottiefiles.com/private_files/lf30_2u9Zt5.json",
                    //         animate: true,
                    //         fit: BoxFit.contain,
                    //       ),
                    //     ),
                    //   ],
                    // ),
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
