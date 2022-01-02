import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  List<String> logos = [
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/LOGO_Dark.png?alt=media&token=762105dc-64db-4466-980f-c13497708121",
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/LOGO_BH_LIGHT.png?alt=media&token=b2ba8a6b-cae3-4016-8444-7d16f92c7859",
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/CodeLogo.png?alt=media&token=f67ca9bb-6232-40bd-96ae-66b3005d934b",
    "https://firebasestorage.googleapis.com/v0/b/beach-hack-4.appspot.com/o/christ_logo.png?alt=media&token=965df78c-9dda-47a9-bb8c-8a1b00b690d7",
  ];
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Container(
      color: const Color.fromRGBO(36, 37, 41, 1),
      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
      width: screenWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 1,
            child: Container(
                child: FadeInImage.assetNetwork(
              image: logos[3],
              placeholder: "assets/images/load_gif.gif",
              fit: BoxFit.contain,
            )),
          ),
          Flexible(
            flex: 5,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //Made with ♥ CODe 2021
                    //Made with Flutter
                    children: const [
                      CircleAvatar(
                        radius: 12.0,
                        backgroundImage: AssetImage('assets/images/fb.png'),
                        backgroundColor: Colors.transparent,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        radius: 12.0,
                        backgroundImage:
                            AssetImage('assets/images/twitter.png'),
                        backgroundColor: Colors.transparent,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        radius: 12.0,
                        backgroundImage:
                            AssetImage('assets/images/linkedin.png'),
                        backgroundColor: Colors.transparent,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        radius: 12.0,
                        backgroundImage: AssetImage('assets/images/insta.png'),
                        backgroundColor: Colors.transparent,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        "  Made with 🤍 CODe 2021\n",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
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
          ),
          Flexible(
            flex: 1,
            child: Container(
                child: FadeInImage.assetNetwork(
              image: logos[1],
              placeholder: "assets/images/load_gif.gif",
              fit: BoxFit.contain,
            )),
          ),
        ],
      ),
    );
  }
}
