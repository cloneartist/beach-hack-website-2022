import 'package:beach_hack_website/pages/Footer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'pages/AboutUs.dart';
import 'pages/ContactPage.dart';
import 'pages/Prize.dart';
import 'pages/events.dart';
import 'pages/intro.dart';
import 'pages/landing_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          children: const [
            LandingPage(),
            Intro(),
            Events(),
            PrizePage(),
            // SchedulePage(),
            AboutUs(),
            ContactPage(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
