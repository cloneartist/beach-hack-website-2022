import 'package:beach_hack_website/AboutUs.dart';
import 'package:beach_hack_website/ContactPage.dart';
import 'package:beach_hack_website/HomePage.dart';
import 'package:beach_hack_website/MobilePage.dart';
import 'package:beach_hack_website/Prize.dart';
import 'package:beach_hack_website/footer.dart';
import 'package:beach_hack_website/intro.dart';
import 'package:beach_hack_website/launch.dart';
import 'package:beach_hack_website/pages/schedule.dart';
import 'package:beach_hack_website/landing_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Launch(),
    );
  }
}
