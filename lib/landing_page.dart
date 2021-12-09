import 'package:beach_hack_website/navbar.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/beach.jpeg'), fit: BoxFit.cover),
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
                    'BEACH HACK PRESENTS',
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.black,
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
                              color: Colors.black87,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 6.4),
                        ),
                        TextSpan(
                          text: ' HACK 4',
                          style: TextStyle(
                              fontSize: 96,
                              color: Colors.black38,
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
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 48,
                        width: 132,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Center(
                          child: Text('Devfolio',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 64,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 48,
                        width: 132,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Center(
                          child: Text('Discord',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18)),
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
    );
  }
}
