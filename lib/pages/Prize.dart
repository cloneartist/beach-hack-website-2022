// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart' show Lottie;

class PrizePage extends StatelessWidget {
  const PrizePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Container(
      color: const Color.fromRGBO(36, 37, 41, 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
                screenWidth * 0.05, screenHeight * 0.08, screenWidth * 0.05, 0),
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return gradient.createShader(Offset.zero & bounds.size);
              },
              child: const Text(
                'Prizes',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 40.0,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                screenWidth * 0.05, screenHeight * 0.05, screenWidth * 0.05, 0),
            child: Container(
              // flex: 2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: screenWidth * 0.25,
                    height: screenHeight * 0.511,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                    child: Column(
                      children: [
                        Lottie.network(
                          'https://assets10.lottiefiles.com/packages/lf20_3u6uxdsw.json',
                          animate: true,
                          width: screenWidth * 0.2,
                          height: screenHeight * 0.2,
                          fit: BoxFit.contain,
                        ),
                        ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return gradient2nd
                                .createShader(Offset.zero & bounds.size);
                          },
                          child: const Center(
                            child: Text(
                              '2nd',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 35.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w900,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: Text(
                            "₹ 30,000",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Container(
                    width: screenWidth * 0.25,
                    height: screenHeight * 0.511,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                    child: Column(
                      children: [
                        Lottie.network(
                          'https://assets2.lottiefiles.com/packages/lf20_rZQs81.json',
                          animate: true,
                          width: screenWidth * 0.2,
                          height: screenHeight * 0.2,
                          fit: BoxFit.contain,
                        ),
                        ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return gradient1st
                                .createShader(Offset.zero & bounds.size);
                          },
                          child: const Center(
                            child: Text(
                              '1st',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 50.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w900,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Text(
                            "₹ 50,000",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Container(
                    width: screenWidth * 0.25,
                    height: screenHeight * 0.511,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                    child: Column(
                      children: [
                        Lottie.network(
                          'https://assets5.lottiefiles.com/packages/lf20_bei3yaim.json',
                          animate: true,
                          width: screenWidth * 0.2,
                          height: screenHeight * 0.2,
                          fit: BoxFit.contain,
                        ),
                        ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return gradient3rd
                                .createShader(Offset.zero & bounds.size);
                          },
                          child: const Center(
                            child: Text(
                              '3rd',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 35.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w900,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: Text(
                            "₹ 20,000",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
              screenWidth * 0.05,
              50,
              screenWidth * 0.05,
              screenWidth * 0.05,
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                gradient: LinearGradient(
                    begin: Alignment(-0.7, -1),
                    end: Alignment(0, 0.7),
                    colors: [
                      Color.fromRGBO(184, 19, 225, 1),
                      Color.fromRGBO(245, 44, 153, 1)
                    ]),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Column(
                children: const [
                  Text(
                    'Participation Perks',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Poppins',
                      fontSize: 40,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 25),
                  Text(
                    '30-days trial version of any JetBrains IDE\nJet-Brains gratuitous 1-year All Products Pack subscriptions worth 649\$\nComplimentary SashiDo Student Credits\nSashiDo internship offers for selected students\nSashiDo complimentary 45 days Trial\nUnlimited Taskade Membership \$60/month\nVoiceflow Professional License worth 49\$/month\nInterview Cake complimentary course access worth \$149\nechoAR free resource offering',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.none,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
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
