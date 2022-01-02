import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

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
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.fromLTRB(screenWidth * 0.05,
                  screenHeight * 0.08, screenWidth * 0.05, screenHeight * 0.08),
              color: const Color.fromRGBO(36, 37, 41, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Who Are We?',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    radius: screenWidth * 0.25,
                    backgroundColor: Colors.black,
                    child: FadeInImage.assetNetwork(
                      image: logos[2],
                      fit: BoxFit.cover,
                      placeholder: "assets/images/load_gif.gif",
                      height: 150,
                      width: 150,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  AutoSizeText(
                    'CODE -THE COMMUNITY OF DEVELOPERS',
                    textAlign: TextAlign.center,
                    minFontSize: 14,
                    maxFontSize: 18,
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 25),
                  AutoSizeText(
                    'The Community of Developers, CODe, the face of, Computer science department, Christ college of Engineering was founded on October 6th, 2018. It serves to augment the professional outlook of students, intends to foster practical knowledge and equip them to be socially responsible engineers. CODe with both faculty and students as its members is a very active association and it organises various programmes such as workshops, competitions, keynote speeches, webinars which aid to bridge the gap between theory and practice.Beach Hack, the first ever beach hackathon of South India was conducted by CODe and has become a celebrated name among students all over South India since its inception in February 2019. This association aims to enhance technical and extra curricular activities of students apart from regular curriculum.',
                    textAlign: TextAlign.justify,
                    maxFontSize: 16,
                    minFontSize: 12,
                    style: TextStyle(
                      color: Color(0xff928D8D),
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.none,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.08),
                  //
                  CircleAvatar(
                    radius: screenWidth * 0.25,
                    backgroundColor: Colors.black,
                    child: FadeInImage.assetNetwork(
                      image: logos[3],
                      fit: BoxFit.cover,
                      height: 150,
                      width: 150,
                      placeholder: "assets/images/load_gif.gif",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  AutoSizeText(
                    'CHRIST COLLEGE OF ENGINEERING',
                    minFontSize: 14,
                    maxFontSize: 18,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 25),
                  AutoSizeText(
                    'Christ College of Engineering established in 2015, is managed by the Carmelites of Mary Immaculate (CMI) congregation of Devamatha Province, Thrissur. CCE is a part of Christ Educational and Charitable Trust, Irinjalakuda and is affiliated to the APJ Abdul Kalam Technological University, Trivandrum, Kerala. CMI institutes are known for providing quality education and they have set up top notch educational institutes all over south India. Christ college of engineering aims to follow the footsteps of many illustrious institutions that the CMI congregation has established and that are annually churning out holistically formed global citizens. The college aims to be a premier professional institution delivering world-class research based education to the students with a view to make them global citizens, effective communicators, responsible leaders and path breaking entrepreneurs. Each and every professional institution is unique and different. What sets our college apart from other professional institutions is how it goes about setting and implementing priorities.',
                    maxFontSize: 16,
                    minFontSize: 12,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xff928D8D),
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.none,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: screenWidth,
              color: Colors.black,
              padding: EdgeInsets.fromLTRB(screenWidth * 0.05,
                  screenHeight * 0.08, screenWidth * 0.05, screenHeight * 0.08),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CONTACT US',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  const Text(
                    '  Want to tell us something?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.none,
                      height: 1.5,
                    ),
                  ),
                  Container(
                    height: screenHeight * 0.15,
                    width: screenWidth,
                    child: const TextField(
                      minLines: 6,
                      maxLines: 7,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Write something then..',
                        hintStyle: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xff898989),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        fillColor: Color(0xff242529),
                        filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '  Email',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.none,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.12,
                    width: screenWidth,
                    child: const TextField(
                      minLines: 3,
                      maxLines: 4,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'someone@xyz.com',
                        hintStyle: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xff898989),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
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
                      width: screenWidth * 0.25,
                      height: 30,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          onPressed: () {},
                          child: Text("Submit")))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
