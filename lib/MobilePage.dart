// ignore_for_file: file_names

import 'package:beach_hack_website/GradientText.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MobilePage extends StatefulWidget {
  const MobilePage({Key? key}) : super(key: key);

  @override
  _MobilePageState createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    var cardWidth = screenWidth * 0.20;
    var cardHeight = screenHeight * 0.5;
    return SingleChildScrollView(
      child: Material(
        child: Column(
          children: [
            Container(
              color: Colors.black,
              child: Padding(
                padding: EdgeInsets.fromLTRB(screenWidth * 0.05,
                    screenHeight * 0.08, screenWidth * 0.05, 0),
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
                      SizedBox(
                        height:
                            (MediaQuery.of(context).size.width / 7) * 2 - 40,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: const Color.fromRGBO(36, 37, 41, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(screenWidth * 0.05,
                        screenHeight * 0.08, screenWidth * 0.05, 0),
                    child: ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return gradient.createShader(Offset.zero & bounds.size);
                      },
                      child: const Text(
                        'EVENTS',
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
                    padding: EdgeInsets.fromLTRB(screenWidth * 0.05,
                        screenHeight * 0.05, screenWidth * 0.05, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: screenWidth * 0.20,
                          height: screenHeight * 0.50,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromRGBO(75, 180, 239, 1),
                                  Color.fromRGBO(91, 8, 120, 1)
                                ]),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Center(
                              child: Text(
                                "Technical\nEvents",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.0,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  decoration: TextDecoration.none,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        SizedBox(
                            width: cardWidth,
                            height: cardHeight,
                            child: buildImageCard(
                                context,
                                'assets/images/codescreen.png',
                                'Pattern Coding',
                                'Do You See What I see?',
                                'Can you break the pattern?')),
                        const Spacer(
                          flex: 1,
                        ),
                        SizedBox(
                            width: cardWidth,
                            height: cardHeight,
                            child: buildImageCard(
                                context,
                                'assets/images/htmlscreen.png',
                                'Web Development',
                                '''Let's Define the new normal in UI''',
                                ' ')),
                        const Spacer(
                          flex: 1,
                        ),
                        SizedBox(
                            width: cardWidth,
                            height: cardHeight,
                            child: buildImageCard(
                                context,
                                'assets/images/iphonescreen.png',
                                'App Development',
                                'Can you beat Chintu To it',
                                'Ready for yet another awesome idea?')),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(screenWidth * 0.05,
                        screenHeight * 0.05, screenWidth * 0.05, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: screenWidth * 0.20,
                          height: screenHeight * 0.50,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromRGBO(75, 180, 239, 1),
                                  Color.fromRGBO(91, 8, 120, 1)
                                ]),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Center(
                              child: Text(
                                "Gaming\nEvents",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.0,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  decoration: TextDecoration.none,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        SizedBox(
                            width: cardWidth,
                            height: cardHeight,
                            child: buildGameCard(
                                context,
                                'assets/images/brawl.png',
                                'Brawl Down',
                                'Are You Ready to brawl?')),
                        const Spacer(
                          flex: 1,
                        ),
                        SizedBox(
                            width: cardWidth,
                            height: cardHeight,
                            child: buildGameCard(
                                context,
                                'assets/images/valorant.png',
                                'Valorant',
                                'Can you pass this one with Valour?')),
                        const Spacer(
                          flex: 1,
                        ),
                        SizedBox(
                            width: cardWidth,
                            height: cardHeight,
                            child: buildGameCard(
                                context,
                                'assets/images/pubg.png',
                                'PUBG',
                                'can you survive this playground?')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: const Color.fromRGBO(36, 37, 41, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(screenWidth * 0.05,
                        screenHeight * 0.08, screenWidth * 0.05, 0),
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
                    padding: EdgeInsets.fromLTRB(screenWidth * 0.05,
                        screenHeight * 0.05, screenWidth * 0.05, 0),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
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
                                    return gradient2nd.createShader(
                                        Offset.zero & bounds.size);
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
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
                                    return gradient1st.createShader(
                                        Offset.zero & bounds.size);
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
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
                                    return gradient3rd.createShader(
                                        Offset.zero & bounds.size);
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 30),
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
            ),
            Container(
              color: const Color.fromRGBO(36, 37, 41, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(screenWidth * 0.05,
                        screenHeight * 0.08, screenWidth * 0.05, 0),
                    child: ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return gradient.createShader(Offset.zero & bounds.size);
                      },
                      child: const Text(
                        'Who Are We?',
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
                      screenWidth * 0.05,
                      50,
                      screenWidth * 0.05,
                      screenWidth * 0.02,
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Colors.black,
                      ),
                      padding: const EdgeInsets.fromLTRB(30, 30, 50, 30),
                      child: Row(
                        children: [
                          Flexible(
                              flex: 2,
                              child: Image.asset(
                                "assets/images/CodeLogo.png",
                                fit: BoxFit.contain,
                              )),
                          Flexible(
                            flex: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'CODE -THE COMMUNITY OF DEVELOPERS',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w700,
                                    decoration: TextDecoration.none,
                                    height: 1.5,
                                  ),
                                ),
                                SizedBox(height: 25),
                                Text(
                                  'The Community of Developers, CODe, the face of, Computer science department, Christ college of Engineering was founded on October 6th, 2018. It serves to augment the professional outlook of students, intends to foster practical knowledge and equip them to be socially responsible engineers. CODe with both faculty and students as its members is a very active association and it organises various programmes such as workshops, competitions, keynote speeches, webinars which aid to bridge the gap between theory and practice.Beach Hack, the first ever beach hackathon of South India was conducted by CODe and has become a celebrated name among students all over South India since its inception in February 2019. This association aims to enhance technical and extra curricular activities of students apart from regular curriculum.',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Color(0xff928D8D),
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.none,
                                    height: 1.5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(screenWidth * 0.05, 0,
                        screenWidth * 0.05, screenWidth * 0.05),
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Colors.black,
                      ),
                      padding: const EdgeInsets.fromLTRB(30, 30, 50, 30),
                      child: Row(
                        children: [
                          Flexible(
                              flex: 2,
                              child: Image.asset(
                                "assets/images/ChristLogo.png",
                                fit: BoxFit.contain,
                              )),
                          Flexible(
                            flex: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'CHRIST COLLEGE OF ENGINEERING',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w700,
                                    decoration: TextDecoration.none,
                                    height: 1.5,
                                  ),
                                ),
                                SizedBox(height: 25),
                                Text(
                                  'Christ College of Engineering established in 2015, is managed by the Carmelites of Mary Immaculate (CMI) congregation of Devamatha Province, Thrissur. CCE is a part of Christ Educational and Charitable Trust, Irinjalakuda and is affiliated to the APJ Abdul Kalam Technological University, Trivandrum, Kerala. CMI institutes are known for providing quality education and they have set up top notch educational institutes all over south India. Christ college of engineering aims to follow the footsteps of many illustrious institutions that the CMI congregation has established and that are annually churning out holistically formed global citizens. The college aims to be a premier professional institution delivering world-class research based education to the students with a view to make them global citizens, effective communicators, responsible leaders and path breaking entrepreneurs. Each and every professional institution is unique and different. What sets our college apart from other professional institutions is how it goes about setting and implementing priorities.',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Color(0xff928D8D),
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.none,
                                    height: 1.5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.black,
              child: Column(
                children: [
                  SizedBox(
                    height: screenHeight * 0.1,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 0, horizontal: screenWidth * 0.1),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                  screenWidth * 0.05,
                                  screenHeight * 0.08,
                                  screenWidth * 0.05,
                                  screenHeight * 0.05),
                              child: ShaderMask(
                                shaderCallback: (Rect bounds) {
                                  return gradient
                                      .createShader(Offset.zero & bounds.size);
                                },
                                child: const Text(
                                  'CONTACT US',
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
                            const Text(
                              '      Want to tell us something?',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontSize: 20,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w300,
                                decoration: TextDecoration.none,
                                height: 1.5,
                              ),
                            ),
                            Container(
                              height: screenHeight * 0.15,
                              width: screenWidth * 0.45,
                              child: const TextField(
                                minLines: 6,
                                maxLines: 7,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  hintText: 'Write something then..',
                                  hintStyle: TextStyle(
                                    fontSize: 15.0,
                                    color: Color(0xff898989),
                                  ),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(width: 2),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30.0))),
                                  fillColor: Color(0xff242529),
                                  filled: true,
                                ),
                              ),
                            ),
                            const SizedBox(height: 30),
                            const Text(
                              '     Email?',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontSize: 20,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w300,
                                decoration: TextDecoration.none,
                                height: 1.5,
                              ),
                            ),
                            SizedBox(
                              height: screenHeight * 0.12,
                              width: screenWidth * 0.45,
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
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30.0))),
                                  fillColor: Color(0xff242529),
                                  filled: true,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            ButtonTheme(
                              padding: EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 16.0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              minWidth: 0,
                              height: 0,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: BorderSide(
                                          color: Color(0xff0596FF),
                                          width: 2.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  onPressed: () => {},
                                  child: const Text('Submit')),
                            ),
                            const SizedBox(
                              height: 30,
                            )
                          ],
                        ),
                        Container(
                          child: Expanded(
                            child: Lottie.network(
                              'https://assets4.lottiefiles.com/packages/lf20_eBcQGa.json',
                              animate: true,
                              width: screenWidth * 0.6,
                              height: screenHeight * 0.6,
                              fit: BoxFit.contain,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Color(0xff242529),
                    width: double.infinity,
                    height: screenHeight * 0.175,
                    margin:
                        new EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    child: Column(
                      children: [
                        Row(),
                        Row(),
                        Row(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

///Widgets

Widget buildImageCard(BuildContext context, image, title, subtitle, content) {
  var screenWidth = MediaQuery.of(context).size.width;
  return Card(
    color: Colors.black,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: AssetImage(image),
              height: 150,
              child: const InkWell(
                focusColor: Colors.amber,
              ),
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: screenWidth * 0.12,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(99, 199, 255, 0.5),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(4, 4, 2, 4),
                  child: Text(
                    title,
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
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 18, color: Colors.white, fontFamily: 'Poppins'),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            content,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 12, color: Colors.white, fontFamily: 'Poppins'),
          ),
        ),
        const Spacer(
          flex: 2,
        ),
        ButtonBar(
          alignment: MainAxisAlignment.center,
          children: [
            TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromRGBO(99, 199, 255, 1)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ))),
                onPressed: () {},
                child: const Text(
                  'Stay Tuned!',
                  style: TextStyle(fontFamily: 'Poppins', color: Colors.white),
                ))
          ],
        ),
        const SizedBox(
          height: 10,
        )
      ],
    ),
  );
}

Widget buildGameCard(BuildContext context, image, subtitle, content) {
  return Card(
    color: Colors.black,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: AssetImage(image),
              height: 150,
              child: const InkWell(
                focusColor: Colors.amber,
              ),
              fit: BoxFit.cover,
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            subtitle,
            style: const TextStyle(
                fontSize: 18, color: Colors.white, fontFamily: 'Poppins'),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            content,
            style: const TextStyle(
                fontSize: 12, color: Colors.white, fontFamily: 'Poppins'),
          ),
        ),
        const Spacer(
          flex: 2,
        ),
        ButtonBar(
          alignment: MainAxisAlignment.center,
          children: [
            TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromRGBO(99, 199, 255, 1)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ))),
                onPressed: () {},
                child: const Text(
                  'Stay Tuned!',
                  style: TextStyle(fontFamily: 'Poppins', color: Colors.white),
                ))
          ],
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    ),
  );
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
