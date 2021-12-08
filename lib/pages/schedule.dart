// 007DA3

import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff000000),
      appBar: NavBarTemp(),
      body: SingleChildScrollView(
        child: Container(
          // color: Color(0xFFE5E5E5),
          child: Column(
            children: [
              Row(
                children: [Text("Schedule")],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(width * .1, 0, width * .1, 0),
                child: Container(
                  // color: Colors.red,
                  // width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: Timeline.tileBuilder(
                    scrollDirection: Axis.horizontal,
                    builder: TimelineTileBuilder(
                      // contentsAlign: ContentsAlign.alternating,
                      contentsBuilder: (context, index) => Container(
                        width: width * .2,
                        height: width * 0.15,
                        // padding: const EdgeInsets.all(8.0),
                        color: Colors.green,
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Container(
                                height: width * 0.1,
                                width: width * 0.1,
                                decoration: BoxDecoration(
                                  color: Color(0xFF242529),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                    // width: 40,
                                    height: 50.0,
                                    child: OutlinedDotIndicator(
                                      color: Colors.white,
                                    )),
                                SizedBox(
                                  width: 40,
                                  height: 50.0,
                                  child: DashedLineConnector(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            // SizedBox(
                            //     width: 40,
                            //     height: 20.0,
                            //     child: Row(
                            //       mainAxisAlignment: MainAxisAlignment.end,
                            //       children: [
                            //         OutlinedDotIndicator(
                            //           color: Colors.white,
                            //         ),
                            //         SizedBox(
                            //           width: 40,
                            //           height: 20.0,
                            //           child: DashedLineConnector(
                            //             color: Colors.white,
                            //           ),
                            //         ),
                            //       ],
                            //     )),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    // color: Color(0xFF242529),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 40,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Event Date",
                                            style: TextStyle(
                                              color: Colors.white,
                                              // fontSize: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                      itemCount: 4,
                    ),
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SizedBox(
                  height: 20.0,
                  child: DashedLineConnector(),
                ),
              )
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
