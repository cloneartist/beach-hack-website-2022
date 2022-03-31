import 'package:beach_hack_website/routes/navbar.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/bg_img_bg.jpeg'),
            fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          const Align(alignment: Alignment.topCenter, child: NavBar()),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "CODe\nPRESENTS",
                  // 'BEACH HACK \nPRESENTS\n',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 6.2),
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'BEACH',
                        style: TextStyle(
                            fontSize: 96,
                            color: Colors.black,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w900,
                            letterSpacing: 6.4),
                      ),
                      TextSpan(
                        text: ' HACK 4',
                        style: TextStyle(
                            fontSize: 96,
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w900,
                            letterSpacing: 6.4),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    height: 56,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Image.asset(
                          //   "assets/images/devfolio.png",
                          //   width: 40,
                          //   height: 50,
                          // ),
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
                    width: 64,
                  ),
                  Container(
                    height: 56,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Color(0xff5865F2),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Image.asset(
                          //   "assets/images/discord.png",
                          //   width: 40,
                          //   height: 30,
                          // ),
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
    );
  }
}
