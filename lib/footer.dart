import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Material(
      child: Container(
        color: const Color.fromRGBO(36, 37, 41, 1),
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  width: 150,
                  child: Image.asset(
                    'assets/images/ChristLogo.png',
                    fit: BoxFit.contain,
                  )),
              Container(
                width: screenWidth * 0.09,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //Made with ♥ CODe 2021
                      //Made with Flutter
                      children: [
                        CircleAvatar(
                          radius: 10.0,
                          backgroundImage: AssetImage('assets/images/fb.png'),
                          backgroundColor: Colors.transparent,
                        ),
                        CircleAvatar(
                          radius: 10.0,
                          backgroundImage:
                              AssetImage('assets/images/twitter.png'),
                          backgroundColor: Colors.transparent,
                        ),
                        CircleAvatar(
                          radius: 10.0,
                          backgroundImage:
                              AssetImage('assets/images/linkedin.png'),
                          backgroundColor: Colors.transparent,
                        ),
                        CircleAvatar(
                          radius: 10.0,
                          backgroundImage:
                              AssetImage('assets/images/insta.png'),
                          backgroundColor: Colors.transparent,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: Text(
                        "  Made with 🤍 CODe 2021\n",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 10),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 7.0,
                            backgroundImage:
                                AssetImage('assets/images/flutter.png'),
                            backgroundColor: Colors.transparent,
                          ),
                          Text(
                            " Made using Flutter",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontSize: 10),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  width: 100,
                  child: Image.asset(
                    'assets/images/bhl.png',
                    fit: BoxFit.contain,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
