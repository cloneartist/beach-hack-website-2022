import 'package:auto_size_text/auto_size_text.dart';
import 'package:beach_hack_website/pages/landing_page.dart';
import 'package:beach_hack_website/routes/navbar.dart';
import 'package:flutter/material.dart';

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
        child: Container(
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
      ),
    );
  }
}
