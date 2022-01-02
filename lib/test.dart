import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class test extends StatelessWidget {
  var logos = [
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/LOGO_Dark.png?alt=media&token=762105dc-64db-4466-980f-c13497708121",
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/LOGO_BH_LIGHT.png?alt=media&token=b2ba8a6b-cae3-4016-8444-7d16f92c7859",
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/CodeLogo.png?alt=media&token=f67ca9bb-6232-40bd-96ae-66b3005d934b",
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/christ_logo.png?alt=media&token=965df78c-9dda-47a9-bb8c-8a1b00b690d7",
  ];

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    // return Material(
    //   child: Timeline.tileBuilder(

    //     builder: TimelineTileBuilder.fromStyle(
    //       contentsAlign: ContentsAlign.basic,
    //       indicatorStyle: IndicatorStyle.outlined,

    //       contentsBuilder: (context, index) => Padding(
    //         padding: const EdgeInsets.all(24.0),
    //         child: Container(
    //           width: screenWidth,
    //           height: 20,
    //           color: Colors.black,
    //           child: Text(
    //             'Timeline Event $index',
    //             style: TextStyle(color: Colors.black),
    //           ),
    //         ),
    //       ),
    //       itemCount: 10,
    //     ),
    //   ),
    // );

    return Material(
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
          contentsBuilder: (context, index) => Padding(
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
                    screenHeight * 0.08,
                    screenWidth * 0.05,
                    screenHeight * 0.08),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '20 Dec,2021',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w800,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'Registration Ends',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Deadline for the registration of teams',
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
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}
