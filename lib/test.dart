import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

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

    return Material(
      color: Colors.black,
      child: Timeline.tileBuilder(
        theme: TimelineThemeData(
          nodePosition: 0.1,
          connectorTheme: ConnectorThemeData(
            thickness: 3.0,
            color: Colors.blue,
          ),
          indicatorTheme: IndicatorThemeData(
            size: 15.0,
          ),
        ),
        // padding: EdgeInsets.symmetric(vertical: 20.0),
        builder: TimelineTileBuilder.fromStyle(
          contentsAlign: ContentsAlign.basic,
          indicatorStyle: IndicatorStyle.outlined,
          contentsBuilder: (context, index) {
            print(index.toString());
            return Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff242529),
                ),
                width: screenWidth,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                      screenWidth * 0.05,
                      screenHeight * 0.05,
                      screenWidth * 0.05,
                      screenHeight * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        dates[index],
                        style: TextStyle(
                          color: Colors.blue[300],
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        titles[index],
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        description[index],
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
            );
          },
          itemCount: 5,
        ),
      ),
    );
  }
}
