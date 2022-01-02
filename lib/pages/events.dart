import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Events extends StatefulWidget {
  const Events({Key? key}) : super(key: key);

  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  var urlOfTechEvents = [
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/codescreen.png?alt=media&token=a8e9d652-0e92-4258-83cc-f5c26e55e530",
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/htmlscreen.png?alt=media&token=92cab819-ab7f-4dd3-bb4c-be9a16e3834c",
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/iphonescreen.png?alt=media&token=11e91ece-7b06-4e30-ad80-11468b88cc6b",
  ];

  var urlOfGameEvents = [
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/pes.jpg?alt=media&token=a235bf14-2101-4c7e-9f5f-06522b1069f7",
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/valorant.png?alt=media&token=36f27eaa-8571-4915-a987-6b323184c931",
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/pubg.png?alt=media&token=81d85699-498a-49bb-8598-90bf6d5c83c9",
  ];

  var techTitle = ["Coding Competition", "Web Development", "App Development"];
  var techSubtitle = [
    "Are you ready to turn caffeine to <Code/>?",
    "If you think math is hard, try web design",
    "Feeling cold? Turn on Android Studio!"
  ];
  var techContent = [
    "This is what AWESOME\nlooks like",
    "You are CSS to my HTML\nHop in!",
    "Let\'s cook something hot!"
  ];

  var gamingTitle = ["PES", "Valorant", "PUBG"];
  var gamingContent = [
    "The pitch is Yours!",
    "Rise to Radiant",
    "Have you had your\nCHICKEN DINNER?"
  ];
  var gamingSubtitle = [
    "PES\nTOURNAMENT",
    "VALORANT\nTOURNAMENT",
    "PUBG\nTOURNAMENT"
  ];

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    var cardWidth = screenWidth * 0.20;
    var cardHeight = screenHeight * 0.5;
    return Container(
      color: const Color.fromRGBO(36, 37, 41, 1),
      padding: EdgeInsets.fromLTRB(screenWidth * 0.05, screenHeight * 0.08,
          screenWidth * 0.05, screenHeight * 0.08),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return gradient.createShader(Offset.zero & bounds.size);
            },
            child: const Text(
              'EVENTS',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 40.0,
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: screenWidth,
            height: cardHeight,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: screenWidth * 0.20,
                  height: screenHeight * 0.50,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(75, 180, 239, 1),
                          Color.fromRGBO(91, 8, 120, 1)
                        ]),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Center(
                      child: Text(
                        "Technical\nEvents",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.none,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: (screenWidth -
                          ((cardWidth * 4) + (screenWidth * 0.05 * 2))) /
                      4,
                ),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, itemIndex) {
                    return Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)),
                        width: cardWidth,
                        height: cardHeight,
                        child: buildImageCard(
                          false,
                          itemIndex,
                          context,
                          urlOfTechEvents[itemIndex],
                          techTitle[itemIndex],
                          techSubtitle[itemIndex],
                          techContent[itemIndex],
                        ));
                  },
                  itemCount: 3,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: (screenWidth -
                              ((cardWidth * 4) + (screenWidth * 0.05 * 2))) /
                          4,
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenWidth * 0.05,
          ),
          Container(
            width: screenWidth,
            height: cardHeight,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: screenWidth * 0.20,
                  height: screenHeight * 0.50,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(75, 180, 239, 1),
                          Color.fromRGBO(91, 8, 120, 1)
                        ]),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Center(
                      child: Text(
                        "Gaming\nEvents",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.none,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: (screenWidth -
                          ((cardWidth * 4) + (screenWidth * 0.05 * 2))) /
                      4,
                ),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, itemIndex) {
                    return Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)),
                        width: cardWidth,
                        height: cardHeight,
                        child: buildImageCard(
                          true,
                          itemIndex,
                          context,
                          urlOfGameEvents[itemIndex],
                          gamingTitle[itemIndex],
                          gamingSubtitle[itemIndex],
                          gamingContent[itemIndex],
                        ));
                  },
                  itemCount: 3,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: (screenWidth -
                              ((cardWidth * 4) + (screenWidth * 0.05 * 2))) /
                          4,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildImageCard(bool isGame, int itemIndex, BuildContext context, image,
    title, subtitle, content) {
  var screenWidth = MediaQuery.of(context).size.width;
  List<bool> techFinished = [false, true, true];
  List<bool> gameFinished = [false, false, false];
  List<bool> Finished;
  isGame ? Finished = gameFinished : Finished = techFinished;
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
        child: Container(
          width: screenWidth,
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topCenter,
              fit: BoxFit.cover,
              image: NetworkImage(image),
            ),
          ),
          child: isGame
              ? SizedBox()
              : Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    // width: screenWidth * 0.12,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(99, 199, 255, 0.5),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          topRight: Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 15, 10),
                      child: AutoSizeText(
                        title,
                        maxLines: 1,
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: AutoSizeText(
          subtitle,
          textAlign: TextAlign.center,
          maxLines: 2,
          style: const TextStyle(
              fontSize: 16, color: Colors.white, fontFamily: 'Poppins'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: AutoSizeText(
          content,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 11, color: Colors.grey, fontFamily: 'Poppins'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Container(
          width: screenWidth,
          height: 30,
          child: Finished[itemIndex]
              ? ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    switch (itemIndex) {
                      case 0:
                        break;
                      case 1:
                        // _launchURL();
                        break;
                      case 2:
                        break;
                      case 3:
                        break;
                    }
                  },
                  child: Text("Register"),
                )
              : ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    switch (itemIndex) {
                      case 0:
                        break;
                      case 1:
                        // _launchURL();
                        break;
                      case 2:
                        break;
                      case 3:
                        break;
                    }
                  },
                  child: Text(
                    "Ended!",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
    ],
  );
}

const gradient = LinearGradient(
  colors: [Color.fromRGBO(9, 122, 255, 1), Color.fromRGBO(54, 105, 165, 1)],
);
