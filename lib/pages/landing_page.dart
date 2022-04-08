import 'package:beach_hack_website/routes/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

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
                GestureDetector(
                  onTap: () {
                    _launchURL("https://beachhack.devfolio.co");
                  },
                  child: Container(
                    height: 44,
                    width: 312,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xff3770ff),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/images/svg-path.svg",
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 12, 20, 0),
                            child: Text(
                              'Apply with Devfolio\n',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  letterSpacing: 0.8,
                                  fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
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
                        SvgPicture.asset(
                          "assets/images/Discord-Logo-White.svg",
                          fit: BoxFit.fitHeight,
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
              ],
            ),
          )
        ],
      ),
    );
  }
}

void _launchURL(String url) async {
  if (!await launch(url)) throw 'Could not launch $url';
}
