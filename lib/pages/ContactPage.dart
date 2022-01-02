// ignore_for_file: file_names
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  // const ContactPage({Key? key}) : super(key: key);

  var _subject_controller = TextEditingController();

  String _email_body = "";

  String _email_subject = "Help";

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.fromLTRB(screenWidth * 0.05, screenHeight * 0.08,
          screenWidth * 0.05, screenHeight * 0.08),
      // width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height,
      color: Colors.black,
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return gradient.createShader(Offset.zero & bounds.size);
                    },
                    child: const Text(
                      'CONTACT US',
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
                  const Text(
                    '    Want to tell us something?',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.none,
                      height: 1.5,
                    ),
                  ),
                  Container(
                    height: screenHeight * 0.15,
                    width: screenWidth * 0.45,
                    child: TextField(
                      minLines: 6,
                      maxLines: 7,
                      controller: _subject_controller,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: '  Write something then..',
                        hintStyle: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xff898989),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0))),
                        fillColor: Color(0xff242529),
                        filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    '   Email?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.none,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.12,
                    width: screenWidth * 0.45,
                    child: const TextField(
                      minLines: 3,
                      maxLines: 4,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: '  someone@xyz.com',
                        hintStyle: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xff898989),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0))),
                        fillColor: Color(0xff242529),
                        filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff0596FF),
                    ),
                    height: 30,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {
                        _email_body = _subject_controller.text;
                        _sendEmail(
                            "code@cce.edu.in", _email_subject, _email_body);
                      },
                      child: Text("Submit"),
                    ),
                  ),
                ],
              ),
              Container(
                child: Expanded(
                  child: Lottie.network(
                    'https://assets9.lottiefiles.com/packages/lf20_u25cckyh.json',
                    animate: true,
                    width: screenWidth * 0.6,
                    height: screenHeight * 0.6,
                    fit: BoxFit.contain,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

_sendEmail(String toMailId, String subject, String body) async {
  var url = 'mailto:$toMailId?subject=$subject&body=$body';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

const gradient = LinearGradient(
  colors: [Color.fromRGBO(37, 88, 188, 1), Color.fromRGBO(10, 89, 241, 1)],
);

const gradient2nd = LinearGradient(
  colors: [Color.fromRGBO(57, 71, 196, 1), Color.fromRGBO(168, 175, 245, 1)],
);

const gradient1st = LinearGradient(
  colors: [Color.fromRGBO(147, 117, 8, 1), Color.fromRGBO(254, 252, 0, 1)],
);

const gradient3rd = LinearGradient(
  colors: [Color.fromRGBO(248, 93, 37, 1), Color.fromRGBO(250, 195, 174, 1)],
);
