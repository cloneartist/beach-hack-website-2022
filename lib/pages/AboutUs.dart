import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Container(
      // width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height,
      color: const Color.fromRGBO(36, 37, 41, 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
                screenWidth * 0.05, screenHeight * 0.08, screenWidth * 0.05, 0),
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return gradient.createShader(Offset.zero & bounds.size);
              },
              child: const Text(
                'Who Are We?',
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
            padding: EdgeInsets.fromLTRB(
              screenWidth * 0.05,
              50,
              screenWidth * 0.05,
              screenWidth * 0.02,
            ),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.black,
              ),
              padding: const EdgeInsets.fromLTRB(30, 30, 50, 30),
              child: Row(
                children: [
                  Flexible(
                      flex: 2,
                      child: Image.asset(
                        "assets/images/CodeLogo.png",
                        fit: BoxFit.contain,
                      )),
                  Flexible(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'CODE -THE COMMUNITY OF DEVELOPERS',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none,
                            height: 1.5,
                          ),
                        ),
                        SizedBox(height: 25),
                        Text(
                          'The Community of Developers, CODe, the face of, Computer science department, Christ college of Engineering was founded on October 6th, 2018. It serves to augment the professional outlook of students, intends to foster practical knowledge and equip them to be socially responsible engineers. CODe with both faculty and students as its members is a very active association and it organises various programmes such as workshops, competitions, keynote speeches, webinars which aid to bridge the gap between theory and practice.Beach Hack, the first ever beach hackathon of South India was conducted by CODe and has become a celebrated name among students all over South India since its inception in February 2019. This association aims to enhance technical and extra curricular activities of students apart from regular curriculum.',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color(0xff928D8D),
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.none,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                screenWidth * 0.05, 0, screenWidth * 0.05, screenWidth * 0.05),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.black,
              ),
              padding: const EdgeInsets.fromLTRB(30, 30, 50, 30),
              child: Row(
                children: [
                  Flexible(
                      flex: 2,
                      child: Image.asset(
                        "assets/images/ChristLogo.png",
                        fit: BoxFit.contain,
                      )),
                  Flexible(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'CHRIST COLLEGE OF ENGINEERING',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none,
                            height: 1.5,
                          ),
                        ),
                        SizedBox(height: 25),
                        Text(
                          'Christ College of Engineering established in 2015, is managed by the Carmelites of Mary Immaculate (CMI) congregation of Devamatha Province, Thrissur. CCE is a part of Christ Educational and Charitable Trust, Irinjalakuda and is affiliated to the APJ Abdul Kalam Technological University, Trivandrum, Kerala. CMI institutes are known for providing quality education and they have set up top notch educational institutes all over south India. Christ college of engineering aims to follow the footsteps of many illustrious institutions that the CMI congregation has established and that are annually churning out holistically formed global citizens. The college aims to be a premier professional institution delivering world-class research based education to the students with a view to make them global citizens, effective communicators, responsible leaders and path breaking entrepreneurs. Each and every professional institution is unique and different. What sets our college apart from other professional institutions is how it goes about setting and implementing priorities.',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color(0xff928D8D),
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.none,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const gradient = LinearGradient(
  colors: [Color.fromRGBO(37, 88, 188, 1), Color.fromRGBO(10, 89, 241, 1)],
);
