import 'dart:js_util';
import 'dart:ui';

import 'package:beach_hack_website/GradientText.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  GradientText(
                    "HACKED",
                    gradient: gradientBlue,
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700),
                  ),
                  GradientText(
                    "LET'S DEFINE THE NEW",
                    gradient: gradientBlue,
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700),
                  ),
                  GradientText(
                    "NORMAL",
                    gradient: gradientBlue,
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Container(
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
                            padding: EdgeInsets.all(60),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                GradientText(
                                  "HACKED",
                                  gradient: gradientBlue,
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "HackEd is the much anticipated third edition of Beach Hackathon. HackEd is educational, sparked with an excitement that can only be attained by determining a socially pertinent dilemma.HackEd is targeted to resolve issues encountered by students and tutors collectively considering the online platforms for learning. It chiefly intends to enhance online education for all by connecting minds simultaneously as a team even during this global pandemic.",
                                  style: TextStyle(
                                      color: Color(0xff898989),
                                      fontFamily: 'Poppins',
                                      fontSize: 20,
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
                      child: Container(
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
                        "THEME : ONLINE EDUCATION",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                        ),
                      ),
                      Row(
                        children: [
                          const Flexible(
                            flex: 5,
                            child: Text(
                              "Technology has been considered central to the reform of school education and has gained unprecedented momentum during this pandemic. When the COVID-19 had resulted in schools shut all across the world, over 1.2 billion children were out of the classroom. Online teaching was perceived as the only immediate means to combat all the education related issues, hence there was a rush to transfer classrooms into the virtual world without taking into consideration the reach to all the learners.",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w300,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 60,
                          ),
                          Flexible(
                            flex: 2,
                            child: Lottie.network(
                              "https://assets9.lottiefiles.com/private_files/lf30_2u9Zt5.json",
                              animate: true,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

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
