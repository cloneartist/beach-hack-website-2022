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
    double width = MediaQuery.of(context).size.width;
    double height = 200;

    double top = 200;
    double left = 300;
    double right = 300;
    double bottom = 200;
    double gap = 150;

    var l = [left, null, (width / 2 - ((width / 6) / 2)), left, null];
    var r = [null, right, null, null, right];
    var t = [top, top, top + height + gap, null, null];
    var b = [null, null, null, bottom, bottom];

    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 2 * top + 3 * height + 2 * gap,
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
              //         width: width / 6,
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
                  width: width / 6,
                  height: height,
                  color: Colors.red,
                  child: Column(
                    children: [
                      Text("data"),
                      Text("data"),
                      Text("data"),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: right,
                top: top,
                child: Container(
                  width: width / 6,
                  height: height,
                  color: Colors.red,
                  child: Column(
                    children: [
                      Text("data"),
                      Text("data"),
                      Text("data"),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: top + height + gap,
                left: (width / 2 - ((width / 6) / 2)),
                child: Container(
                  width: width / 6,
                  height: height,
                  color: Colors.red,
                  child: Column(
                    children: [
                      Text("data"),
                      Text("data"),
                      Text("data"),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: bottom,
                left: left,
                child: Container(
                  width: width / 6,
                  height: height,
                  color: Colors.red,
                  child: Column(
                    children: [
                      Text("data"),
                      Text("data"),
                      Text("data"),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: bottom,
                right: right,
                child: Container(
                  width: width / 6,
                  height: height,
                  color: Colors.red,
                  child: Column(
                    children: [
                      Text("data"),
                      Text("data"),
                      Text("data"),
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

    double Wbox = width / 6; //Width of Box
    double Hbox = 200;

    var paint = Paint();

    paint.color = Colors.blue;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 5.0;

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
