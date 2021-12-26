import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

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
                child: Image.asset(
              'assets/images/ChristLogo.png',
              fit: BoxFit.cover,
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
                child: Image.asset(
              'assets/images/LOGO_BH_LIGHT.png',
              fit: BoxFit.cover,
            )),
          ),
        ],
      ),
    );
  }
}
