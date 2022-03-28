import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';
import 'dart:ui';

class MySchedulePage extends StatefulWidget {
  const MySchedulePage({Key? key}) : super(key: key);

  @override
  State<MySchedulePage> createState() => _MySchedulePageState();
}

class _MySchedulePageState extends State<MySchedulePage> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    double top = 200;
    double left = 300;
    double right = 300;
    double bottom = 200;
    double gap = 30;

    double Wbox = width / 5; //Width of Box
    double Hbox = 225;

    //schedule

    var dates = [
      "1 Feb, 2022",
      // "4 Feb, 2022",
      "11 Feb, 2022",
      "14 Feb, 2022",
      "18 Feb, 2022",
      "19 Feb, 2022"
    ];

    var titles = [
      "Registration and Idea Submission",
      "Prototype Submission",
      "Publishing of shortlisted teams",
      "Inaugural ceremony and hackathon begins",
      "Concluding ceremony"
    ];

    var description = [
      "Last date to register and to submit idea for the event",
      "Last date to submit minimum viable product(MVP)",
      "Results of evaluation on the basis of MVP",
      "Marks the starting of 24-hour hackathon",
      "Final presentation and prize distribution"
    ];

    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 2 * top + 5 * Hbox,
        child: CustomPaint(
          painter: MyPainter(),
          child: Stack(
            children: [
              Positioned(
                top: 75,
                left: 90,
                child: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return gradient.createShader(Offset.zero & bounds.size);
                  },
                  child: const Text(
                    'SCHEDULE',
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
              Positioned(
                left: left,
                top: top,
                child: Container(
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromRGBO(36, 37, 41, 1),
                  ),
                  width: Wbox,
                  height: Hbox,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        dates[0],
                        style: TextStyle(
                          color: Colors.blue[300],
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w800,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        titles[0],
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        description[0],
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: right + Wbox / 3,
                top: top + Hbox,
                child: Container(
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromRGBO(36, 37, 41, 1),
                  ),
                  width: Wbox,
                  height: Hbox,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        dates[1],
                        style: TextStyle(
                          color: Colors.blue[300],
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w800,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        titles[1],
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        description[1],
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 2.9 * Hbox,
                left: left - Wbox / 6,
                child: Container(
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromRGBO(36, 37, 41, 1),
                  ),
                  width: Wbox,
                  height: Hbox,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        dates[2],
                        style: TextStyle(
                          color: Colors.blue[300],
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w800,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        titles[2],
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        description[2],
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: bottom + Hbox,
                right: right,
                child: Container(
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromRGBO(36, 37, 41, 1),
                  ),
                  width: Wbox,
                  height: Hbox,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        dates[3],
                        style: TextStyle(
                          color: Colors.blue[300],
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w800,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        titles[3],
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        description[3],
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: bottom - Hbox / 2,
                left: width / 2 - Wbox,
                child: Container(
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromRGBO(36, 37, 41, 1),
                  ),
                  width: Wbox,
                  height: Hbox,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        dates[4],
                        style: TextStyle(
                          color: Colors.blue[300],
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w800,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        titles[4],
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        description[4],
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double width = size.width;
    double height = size.height;

    double top = 200;
    double left = 300;
    double right = 300;
    double bottom = 200;
    double gap = 30;

    double Wbox = width / 5; //Width of Box
    double Hbox = 225;

    var paint = Paint();

    paint.style = PaintingStyle.stroke;

    paint.strokeWidth = 5.0;
    paint.strokeCap = StrokeCap.round;

    paint.color = Colors.grey.shade300;
    var path = Path();

    path.moveTo(left + Wbox, top + Hbox / 2);
    path.lineTo(width - right, top + Hbox / 2);
    path.arcToPoint(Offset(width - right, gap + Hbox * 1.5 + top),
        radius: const Radius.circular(1));
    path.lineTo(left, gap + Hbox * 1.5 + top);
    path.arcToPoint(Offset(left, 2 * gap + Hbox * 2.5 + top),
        radius: const Radius.circular(1), clockwise: false);
    path.lineTo(width - 1.5 * right, 2 * gap + Hbox * 2.5 + top);
    path.arcToPoint(Offset(width - 1.5 * right, 3 * gap + Hbox * 3.5 + top),
        radius: const Radius.circular(1));
    path.lineTo(left, 3 * gap + Hbox * 3.5 + top);
    path.arcToPoint(Offset(left, 4 * gap + Hbox * 4.5 + top),
        radius: const Radius.circular(1), clockwise: false);
    path.lineTo(width / 3, 4 * gap + Hbox * 4.5 + top);

    Path dashedPath = Path();

    double dashWidth = 30.0;
    double dashSpace = 15.0;
    double distance = 0.0;

    for (PathMetric pathMetric in path.computeMetrics()) {
      while (distance < pathMetric.length) {
        dashedPath.addPath(
          pathMetric.extractPath(distance, distance + dashWidth),
          Offset.zero,
        );

        distance += dashWidth;
        distance += dashSpace;
      }
    }

    canvas.drawPath(dashedPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    throw UnimplementedError();
  }
}

const gradient = LinearGradient(
  colors: [Color.fromRGBO(37, 88, 188, 1), Color.fromRGBO(10, 89, 241, 1)],
);
