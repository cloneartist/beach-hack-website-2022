// 007DA3

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double row = height * 0.5;
    bool realColor = true;
    List<Map<String, String>> schedule = [
      {
        "date": "November 1",
        "name": "Registration Open",
        "subtitle": "Registration Opens on Website"
      },
      {
        "date": "November 2",
        "name": "Registration Close",
        "subtitle": "Registration Closes on Website"
      },
      {
        "date": "November 3",
        "name": "Registration Close",
        "subtitle": "Registration Closes on Website"
      },
      {
        "date": "November 4",
        "name": "Registration Close",
        "subtitle": "Registration Closes on Website"
      },
      {
        "date": "November 5",
        "name": "Registration Close",
        "subtitle": "Registration Closes on Website"
      },
      {
        "date": "November 6",
        "name": "Registration Close",
        "subtitle": "Registration Closes on Website"
      },
      {
        "date": "November 7",
        "name": "Registration Close",
        "subtitle": "Registration Closes on Website"
      },
      {
        "date": "November 8",
        "name": "Registration Close",
        "subtitle": "Registration Closes on Website"
      }
    ];
    final Shader linearGradient = LinearGradient(
      colors: <Color>[
        // Color(0xff3679FD),
        Color.fromRGBO(54, 121, 253, 1),
        Color.fromRGBO(87, 122, 188, 1.61)
        // Color(0xff577ABC).opacity(0.6)
      ],
    ).createShader(Rect.fromLTWH(0.0, 0.0, 40.0, 50.0));
    return Container(
      // height: height * 1.5,
      // color: Color(0xFFE5E5E5),
      child: MediaQuery.of(context).size.width <= 768.0
          ? MobileView(height, width, schedule)
          : DesktopView(linearGradient, realColor, row, width, schedule),
    );
  }

  Column DesktopView(Shader linearGradient, bool realColor, double row,
      double width, List<Map<String, String>> schedule) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          // color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Schedule",
                style: TextStyle(
                    fontSize: 50, foreground: Paint()..shader = linearGradient),
              )
            ],
          ),
        ),
        Container(
          color: realColor ? Color(0xff000000) : Colors.red,
          // width: MediaQuery.of(context).size.width * 1,
          height: row,
          child:
              // 1 == 1
              //     ? Container(
              //         height: 200,
              //         color: Colors.amber,
              //       )
              //     :
              Timeline.tileBuilder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            builder: TimelineTileBuilder(
              // contentsAlign: ContentsAlign.alternating,
              contentsBuilder: (context, index) => Container(
                width: width * .2,
                height: width * 0.15,
                // padding: const EdgeInsets.all(8.0),
                color: realColor ? Color(0xff000000) : Colors.green,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        height: width * 0.15,
                        width: width * 0.15,
                        decoration: BoxDecoration(
                          color: Color(0xFF242529),
                          // color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                AutoSizeText(
                                  schedule[index]["date"]!,
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                AutoSizeText(
                                  schedule[index]["name"]!,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                AutoSizeText(
                                  schedule[index]["subtitle"]!,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 09,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    index == 3
                        ? Container()
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                  // width: 40,
                                  height: 100.0,
                                  child: OutlinedDotIndicator(
                                    borderWidth: 3.0,
                                    size: width * 0.020,
                                    color: Colors.white,
                                  )),
                              SizedBox(
                                width: width * 0.15,
                                height: 50.0,
                                child: DashedLineConnector(
                                  gap: 8.0,
                                  dash: 4.0,
                                  indent: width * 0.005,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                  ],
                ),
              ),
              itemCount: 4,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(width * .1, 0, width * .1, 0),
          child: Container(
            color: realColor ? Color(0xff000000) : Colors.red,
            // padding: EdgeInsets.all(10),
            // width: MediaQuery.of(context).size.width * 1,
            height: row,
            child: Timeline.tileBuilder(
              // padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              builder: TimelineTileBuilder(
                // contentsAlign: ContentsAlign.alternating,
                contentsBuilder: (context, index) => Container(
                  width: width * .2,
                  height: width * 0.15,
                  // padding: const EdgeInsets.all(8.0),
                  color: realColor ? Color(0xff000000) : Colors.green,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          height: width * 0.15,
                          width: width * 0.15,
                          decoration: BoxDecoration(
                            color: Color(0xFF242529),
                            // color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  AutoSizeText(
                                    schedule[4 + (index)]["date"]!,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  AutoSizeText(
                                    schedule[4 + (index)]["name"]!,
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  AutoSizeText(
                                    schedule[4 + (index)]["subtitle"]!,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 09,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      index == 3
                          ? Container()
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                    // width: 40,
                                    height: 100.0,
                                    child: OutlinedDotIndicator(
                                      borderWidth: 3.0,
                                      size: width * 0.020,
                                      color: Colors.white,
                                    )),
                                SizedBox(
                                  width: width * 0.15,
                                  height: 50.0,
                                  child: DashedLineConnector(
                                    gap: 8.0,
                                    dash: 4.0,
                                    indent: width * 0.005,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                    ],
                  ),
                ),
                itemCount: 4,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column MobileView(
      double height, double width, List<Map<String, String>> schedule) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: height * 0.05,
        ),
        Container(
          // color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: width * 0.15,
                child: Image.asset(
                  'assets/images/Schedule.png',
                  fit: BoxFit.contain,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: height * 0.05,
        ),
        FixedTimeline.tileBuilder(
          builder: TimelineTileBuilder.connectedFromStyle(
            contentsAlign: ContentsAlign.alternating,
            oppositeContentsBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('opposite\ncontents'),
            ),
            contentsBuilder: (context, index) => Container(
              height: height * 0.30,
              width: width * 0.37,
              decoration: BoxDecoration(
                color: Color(0xFF242529),
                // color: Colors.red,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    // mainAxisAlignment:
                    // MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: height * .05,
                      ),
                      Row(
                        children: [
                          AutoSizeText(
                            schedule[index]["name"]!,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: width * .34,
                            height: height * .07,
                            child: AutoSizeText(
                              schedule[index]["subtitle"]!,
                              maxLines: 2,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: width * .2,
                        // height: 20,
                        padding: EdgeInsets.all(10),
                        // width: ,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          // color: Color(0xFF242529),
                          // color: Colors.red,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: AutoSizeText(
                          schedule[index]["date"]!,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            connectorStyleBuilder: (context, index) => ConnectorStyle.solidLine,
            indicatorStyleBuilder: (context, index) => IndicatorStyle.dot,
            itemCount: 8,
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }

  AppBar NavBarTemp() {
    return AppBar(
      backgroundColor: Color(0xff007DA3),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Schedule'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    // primary: Colors.blue,
                    backgroundColor: Color(0xff0596FF)),
                onPressed: () {},
                child: Text(
                  'TextButton',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    // primary: Colors.blue,
                    backgroundColor: Color(0xff0596FF)),
                onPressed: () {},
                child: Text(
                  'TextButton',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    // primary: Colors.blue,
                    backgroundColor: Color(0xff0596FF)),
                onPressed: () {},
                child: Text(
                  'TextButton',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              // Text("data")
              SizedBox(
                width: 10,
              ),
              TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    // primary: Colors.blue,
                    backgroundColor: Color(0xff0596FF)),
                onPressed: () {},
                child: Text(
                  'TextButton',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ],
      ),
      // actions: [Text("data"), Text("data"), Text("data")],
    );
  }
}
