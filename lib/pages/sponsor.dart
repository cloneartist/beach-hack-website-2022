import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Sponsor extends StatelessWidget {
  const Sponsor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Color.fromRGBO(36, 37, 41, 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MediaQuery.of(context).size.width < 500
              ? Padding(
                  padding: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.05,
                      MediaQuery.of(context).size.height * 0.08,
                      0,
                      MediaQuery.of(context).size.height * 0.08),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Sponsors",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                )
              : Padding(
                  padding: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.05,
                      MediaQuery.of(context).size.height * 0.08,
                      0,
                      MediaQuery.of(context).size.height * 0.08),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return gradient.createShader(Offset.zero & bounds.size);
                      },
                      child: const Text(
                        'SPONSORS',
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
                ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Divider(
                  indent: MediaQuery.of(context).size.width / 8,
                  endIndent: 20,
                  color: const Color(0xffE5E4E2),
                  thickness: 1,
                ),
              ),
              const AutoSizeText(
                "Platinum",
                maxLines: 1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xffE5E4E2),
                  fontSize: 40,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700,
                ),
              ),
              Expanded(
                flex: 2,
                child: Divider(
                  color: const Color(0xffE5E4E2),
                  thickness: 1,
                  indent: 20,
                  endIndent: MediaQuery.of(context).size.width / 8,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.spaceEvenly,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 40,
              runSpacing: 30,
              children: [
                GestureDetector(
                  onTap: () {
                    _launchURL("https://devfolio.co");
                  },
                  child: Image.asset(
                    "assets/images/Devfolio_Logo-White.png",
                    fit: BoxFit.cover,
                  ),
                ),
                GestureDetector(
                  onTap: (() => launch("https://polygon.technology")),
                  child: Image.asset(
                    "assets/images/Polygon_Logo-White.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ]),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Divider(
                  indent: MediaQuery.of(context).size.width / 8,
                  endIndent: 20,
                  color: const Color(0xffFFD700),
                  thickness: 1,
                ),
              ),
              const AutoSizeText(
                "Gold",
                maxLines: 1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xffFFD700),
                  fontSize: 40,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700,
                ),
              ),
              Expanded(
                flex: 2,
                child: Divider(
                  color: const Color(0xffFFD700),
                  thickness: 1,
                  indent: 20,
                  endIndent: MediaQuery.of(context).size.width / 8,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.spaceEvenly,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 20,
            runSpacing: 20,
            children: [
              GestureDetector(
                onTap: (() => launch("https://tezos.com")),
                child: Image.asset(
                  "assets/images/Tezos_Logo-White.png",
                  fit: BoxFit.cover,
                ),
              ),
              GestureDetector(
                onTap: (() => launch("https://celo.org")),
                child: Image.asset(
                  "assets/images/Celo Logo Monochrome Reverse.png",
                  fit: BoxFit.cover,
                ),
              ),
              GestureDetector(
                onTap: () => launch("https://filecoin.io"),
                child: Image.asset(
                  "assets/images/Filecoin White.png",
                  width: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.08,
          )
        ],
      ),
    );
  }
}

const gradient = LinearGradient(
  colors: [Color.fromRGBO(37, 88, 188, 1), Color.fromRGBO(10, 89, 241, 1)],
);

void _launchURL(String url) async {
  if (!await launch(url)) throw 'Could not launch $url';
}
