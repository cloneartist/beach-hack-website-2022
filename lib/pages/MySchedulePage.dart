import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

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
    double gap = 150;

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

    // var l = [left, null, (width / 2 - ((Wbox) / 2)), left, null];
    // var r = [null, right, null, null, right];
    // var t = [top, top, top + height + gap, null, null];
    // var b = [null, null, null, bottom, bottom];

    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 2 * top + 3 * Hbox + 2 * gap,
        child: CustomPaint(
          painter: MyPainter(),
          child: Stack(
            children: [
              // ListView.builder(
              //   itemBuilder: (BuildContext context, int index) {
              //     return Positioned(
              //       left: l[index],
              //       top: t[index],
              //       bottom: b[index],
              //       right: r[index],
              //       child: Container(
              //         width: Wbox,
              //         height: height,
              //         color: Colors.red,
              //         child: Column(
              //           children: [
              //             Text("data"),
              //             Text("data"),
              //             Text("data"),
              //           ],
              //         ),
              //       ),
              //     );
              //   },
              //   itemCount: 5,
              // ),
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
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        titles[0],
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        description[0],
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: right,
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
                        dates[1],
                        style: TextStyle(
                          color: Colors.blue[300],
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        titles[1],
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        description[1],
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: top + Hbox + gap,
                left: (width / 2 - ((Wbox) / 2)),
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
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        titles[2],
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        description[2],
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: bottom,
                left: left,
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
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        titles[3],
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        description[3],
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: bottom,
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
                        dates[4],
                        style: TextStyle(
                          color: Colors.blue[300],
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        titles[4],
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        description[4],
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
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
    double gap = 150;

    double Wbox = width / 5; //Width of Box
    double Hbox = 225;

    var paint = Paint();

    paint.color = Colors.grey;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 10.0;

    var path1 = Path();
    var path2 = Path();

    path2.moveTo(left + Wbox, top + Hbox / 2);
    path2.lineTo(width - right, top + Hbox / 2);
    path2.arcToPoint(Offset(width - right, gap + Hbox * 1.5 + top),
        radius: const Radius.circular(1));
    path2.lineTo(left, gap + Hbox * 1.5 + top);
    path2.arcToPoint(Offset(left, 2 * gap + Hbox * 2.5 + top),
        radius: const Radius.circular(1), clockwise: false);
    path2.lineTo(width - right, 2 * gap + Hbox * 2.5 + top);

    canvas.drawPath(path2, paint);
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
