import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Coupon extends StatelessWidget {
  Coupon({Key? key}) : super(key: key);

  List<String> prizeLottie = [
    'https://assets2.lottiefiles.com/packages/lf20_rZQs81.json',
    'https://assets10.lottiefiles.com/packages/lf20_3u6uxdsw.json',
    'https://assets5.lottiefiles.com/packages/lf20_bei3yaim.json',
  ];

  List<String> title = [
    "1st Prize Winner",
    "2nd Prize Winner",
    "3rd Prize Winner"
  ];

  List<String> names = [
    "Ritty",
    "Thomas",
    "Sabna",
  ];

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.black,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.fromLTRB(screenWidth * 0.05, screenHeight * 0.08,
            screenWidth * 0.05, screenHeight * 0.08),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return gradient.createShader(Offset.zero & bounds.size);
              },
              child: const Text(
                'COUPON WINNERS',
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
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 5,
                    child: Container(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment(0, -0.8),
                            child: AutoSizeText(
                              "BEACH HACK 4\nCOUPON WINNERS",
                              maxFontSize: 40,
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.center,
                              minFontSize: 14,
                            ),
                          ),
                          Align(
                            alignment: Alignment(0, -1),
                            child: Lottie.network(
                              "https://assets2.lottiefiles.com/packages/lf20_w1nrx5zt.json",
                              animate: true,
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                              height: MediaQuery.of(context).size.height / 2.5,
                              width: MediaQuery.of(context).size.width / 2.5,
                            ),
                          ),
                        ],
                      ),
                      height: screenWidth / 3,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromRGBO(36, 37, 41, 1),
                      ),
                    )),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    flex: 3,
                    child: Container(
                      height: screenWidth / 3,
                      child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color.fromRGBO(36, 37, 41, 1),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10.0, 10, 20, 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Lottie.network(
                                      prizeLottie[index],
                                      animate: true,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 5,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        AutoSizeText(
                                          title[index],
                                          maxLines: 1,
                                          style: TextStyle(
                                            color: Colors.blue.shade300,
                                            fontSize: 35.0,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w900,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                        AutoSizeText(
                                          names[index],
                                          maxLines: 1,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25.0,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 20,
                          );
                        },
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

const gradient = LinearGradient(
  colors: [Color.fromRGBO(37, 88, 188, 1), Color.fromRGBO(10, 89, 241, 1)],
);
