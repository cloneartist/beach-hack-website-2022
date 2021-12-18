import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:beach_hack_website/AboutUs.dart';
import 'package:beach_hack_website/GradientText.dart';
import 'package:beach_hack_website/animations/animatedbackground.dart';
import 'package:beach_hack_website/beachhack.dart';
import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:video_player/video_player.dart';

class Launch extends StatefulWidget {
  const Launch({Key? key}) : super(key: key);

  @override
  _LaunchState createState() => _LaunchState();
}

class _LaunchState extends State<Launch> {
  late VideoPlayerController _controller;

  bool launchWater = false;

  double progressValue = 0;
  // late Future<void> _initializeVideoPlayerFuture;

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    print(WidgetsBinding.instance?.window.physicalSize.height.toString());
    print(WidgetsBinding.instance?.window.physicalSize.width.toString());

    // _controller = VideoPlayerController.asset('assets/images/bg_1080_web.webm');
    // _controller = VideoPlayerController.asset('assets/images/bg_720.mp4');
    // _controller.addListener(() {
    //   setState(() {});
    // });
    // _controller.setLooping(true);
    // _controller.initialize().then((_) => _controller.play());
    // _controller.play();
    //Future builder

    // _controller = VideoPlayerController.asset('assets/images/bg_720.mp4');
    // _initializeVideoPlayerFuture = _controller.initialize();
    // print(_controller.dataSource.toString());
    // _controller.setLooping(true);

    //firebaes

    _controller = VideoPlayerController.network(
        'https://firebasestorage.googleapis.com/v0/b/bh-local-3cf93.appspot.com/o/bg.mp4?alt=media&token=e0c34833-3bfd-47ef-8649-26c92e9b5eb9');
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
  }

  void increaseTimer() {
    if (launchWater) {
      Timer.periodic(Duration(milliseconds: 18), (sec) {
        setState(() {
          if (progressValue >= 1) {
            sec.cancel();
            Future.delayed(Duration(seconds: 1), () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const BeachHack()));
            });
          } else {
            progressValue = progressValue + 0.008;
          }
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.red,
          body: GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: Stack(
              fit: StackFit.expand,
              children: [
                _controller.value.isInitialized
                    ? FittedBox(
                        alignment: Alignment.topCenter,
                        fit: BoxFit.cover,
                        child: SizedBox(
                            width: _controller.value.size.width,
                            height: _controller.value.size.height,
                            child: VideoPlayer(_controller)),
                      )
                    : Image.asset(
                        "assets/images/bg_img.jpg",
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        fit: BoxFit.cover,
                      ),

                launchWater
                    ? Align(
                        alignment: Alignment(0, 0.25),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: LiquidLinearProgressIndicator(
                            value: progressValue, // Defaults to 0.5.
                            valueColor: AlwaysStoppedAnimation(Colors
                                .black87), // Defaults to the current Theme's accentColor.
                            backgroundColor: Colors
                                .transparent, // Defaults to the current Theme's backgroundColor.
                            direction: Axis.vertical,

                            // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.horizontal.
                          ),
                        ),
                      )
                    : SizedBox(),

                Align(
                  alignment: Alignment(0, 0),
                  child: Text(
                    // "CODe\nPRESENTS",
                    "BEACH HACK\nPRESENTS",
                    style: TextStyle(
                        color: Colors.white60,
                        fontSize: 200,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),

                Align(
                  alignment: Alignment(0, 0.75),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.white38,
                    ),
                    onPressed: () {
                      setState(() {
                        launchWater = true;
                      });
                      increaseTimer();
                    },
                    child: Text(
                      "Tap to Launch",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                        fontFamily: "Poppins",
                        color: Colors.white54,
                      ),
                    ),
                  ),
                )
                // FutureBuilder(
                //   future: _initializeVideoPlayerFuture,
                //   builder: (context, snapshot) {
                //     // if (snapshot.hasData) {
                //     //   return const Text("data");
                //     // } else if (snapshot.hasError) {
                //     //   return Center(child: Text(snapshot.error.toString()));
                //     // } else if (snapshot.connectionState ==
                //     //     ConnectionState.waiting) {
                //     //   return const Center(
                //     //     child: CircularProgressIndicator(),
                //     //   );
                //     // } else if
                //     if (snapshot.connectionState == ConnectionState.done) {
                //       return FittedBox(
                //         alignment: Alignment.topCenter,
                //         fit: BoxFit.cover,
                //         child: SizedBox(
                //             width: _controller.value.size.width,
                //             height: _controller.value.size.height,
                //             child: VideoPlayer(_controller)),
                //       );
                //     } else {
                //       return const Center(
                //         child: CircularProgressIndicator(),
                //       );
                //     }
                //   },
                // ),
              ],
            ),
          )),
    );
  }
}
