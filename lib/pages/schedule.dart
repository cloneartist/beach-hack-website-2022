// 007DA3

import 'package:auto_size_text/auto_size_text.dart';
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
    return Scaffold(
      backgroundColor: Color(0xff000000),
      appBar: NavBarTemp(),
      body: SingleChildScrollView(
        child: Container(
          height: height * 2,
          // color: Color(0xFFE5E5E5),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Schedule",
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(width * .1, 0, width * .1, 0),
                child: Container(
                  color: realColor ? Color(0xff000000) : Colors.red,
                  // width: MediaQuery.of(context).size.width * 1,
                  height: row,
                  child: Timeline.tileBuilder(
                    shrinkWrap: true,
                    // padding: EdgeInsets.,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                                              fontWeight: FontWeight.bold),
                                        ),
                                        AutoSizeText(
                                          schedule[index]["subtitle"]!,
                                          style: TextStyle(color: Colors.white),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        AutoSizeText(
                                          "November 2019",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        AutoSizeText(
                                          "Registration Opens",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        AutoSizeText(
                                          "November 2019",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        AutoSizeText(
                                          "November 2019",
                                          style: TextStyle(color: Colors.white),
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
          ),
        ),
      ),
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
