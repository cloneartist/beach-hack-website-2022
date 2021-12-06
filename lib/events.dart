import 'package:flutter/material.dart';

class Events extends StatefulWidget {
  const Events({Key? key}) : super(key: key);

  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    var cardWidth = screenWidth * 0.20;
    var cardHeight = screenHeight * 0.5;
    return Container(
      color: const Color.fromRGBO(36, 37, 41, 1),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(screenWidth * 0.05,
                  screenHeight * 0.08, screenWidth * 0.05, 0),
              child: ShaderMask(
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
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(screenWidth * 0.05,
                  screenHeight * 0.05, screenWidth * 0.05, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
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
                  const Spacer(
                    flex: 1,
                  ),
                  SizedBox(
                      width: cardWidth,
                      height: cardHeight,
                      child: buildImageCard(
                          context,
                          'assets/images/codescreen.png',
                          'Pattern Coding',
                          'Do You See What I see?',
                          'Can you break the pattern?')),
                  const Spacer(
                    flex: 1,
                  ),
                  SizedBox(
                      width: cardWidth,
                      height: cardHeight,
                      child: buildImageCard(
                          context,
                          'assets/images/htmlscreen.png',
                          'Web Development',
                          '''Let's Define the new normal in UI''',
                          ' ')),
                  const Spacer(
                    flex: 1,
                  ),
                  SizedBox(
                      width: cardWidth,
                      height: cardHeight,
                      child: buildImageCard(
                          context,
                          'assets/images/iphonescreen.png',
                          'App Development',
                          'Can you beat Chintu To it',
                          'Ready for yet another awesome idea?')),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(screenWidth * 0.05,
                  screenHeight * 0.05, screenWidth * 0.05, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
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
                  const Spacer(
                    flex: 1,
                  ),
                  SizedBox(
                      width: cardWidth,
                      height: cardHeight,
                      child: buildGameCard(context, 'assets/images/brawl.png',
                          'Brawl Down', 'Are You Ready to brawl?')),
                  const Spacer(
                    flex: 1,
                  ),
                  SizedBox(
                      width: cardWidth,
                      height: cardHeight,
                      child: buildGameCard(
                          context,
                          'assets/images/valorant.png',
                          'Valorant',
                          'Can you pass this one with Valour?')),
                  const Spacer(
                    flex: 1,
                  ),
                  SizedBox(
                      width: cardWidth,
                      height: cardHeight,
                      child: buildGameCard(context, 'assets/images/pubg.png',
                          'PUBG', 'can you survive this playground?')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildImageCard(BuildContext context, image, title, subtitle, content) {
  var screenWidth = MediaQuery.of(context).size.width;
  return Card(
    color: Colors.black,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: AssetImage(image),
              height: 150,
              child: const InkWell(
                focusColor: Colors.amber,
              ),
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: screenWidth * 0.12,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(99, 199, 255, 0.5),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(4, 4, 2, 4),
                  child: Text(
                    title,
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
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 18, color: Colors.white, fontFamily: 'Poppins'),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            content,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 12, color: Colors.white, fontFamily: 'Poppins'),
          ),
        ),
        const Spacer(
          flex: 2,
        ),
        ButtonBar(
          alignment: MainAxisAlignment.center,
          children: [
            TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromRGBO(99, 199, 255, 1)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ))),
                onPressed: () {},
                child: const Text(
                  'Stay Tuned!',
                  style: TextStyle(fontFamily: 'Poppins', color: Colors.white),
                ))
          ],
        ),
        const SizedBox(
          height: 10,
        )
      ],
    ),
  );
}

Widget buildGameCard(BuildContext context, image, subtitle, content) {
  return Card(
    color: Colors.black,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
    child: Expanded(
      child: Column(
        children: [
          Stack(
            children: [
              Ink.image(
                image: AssetImage(image),
                height: 150,
                child: const InkWell(
                  focusColor: Colors.amber,
                ),
                fit: BoxFit.cover,
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              subtitle,
              style: const TextStyle(
                  fontSize: 18, color: Colors.white, fontFamily: 'Poppins'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              content,
              style: const TextStyle(
                  fontSize: 12, color: Colors.white, fontFamily: 'Poppins'),
            ),
          ),
          const Spacer(
            flex: 2,
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromRGBO(99, 199, 255, 1)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ))),
                  onPressed: () {},
                  child: const Text(
                    'Stay Tuned!',
                    style:
                        TextStyle(fontFamily: 'Poppins', color: Colors.white),
                  ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    ),
  );
}

const gradient = LinearGradient(
  colors: [Color.fromRGBO(9, 122, 255, 1), Color.fromRGBO(54, 105, 165, 1)],
);
