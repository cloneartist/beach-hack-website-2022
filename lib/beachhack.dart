import 'dart:async';

import 'package:beach_hack_website/HomePage.dart';
import 'package:beach_hack_website/animations/shatter.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:video_player/video_player.dart';

class BeachHack extends StatefulWidget {
  const BeachHack({Key? key}) : super(key: key);

  @override
  State<BeachHack> createState() => _BeachHackState();
}

class _BeachHackState extends State<BeachHack> {
  var control = CustomAnimationControl.stop;
  late VideoPlayerController _controller;

  // final AudioPlayer _audioPlayer = AudioPlayer('assets/assets/music.mp3');

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 7), () {
      // ShatterScene(
      //   builder: (context, shatterFn) {
      //     Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //             builder: (_) =>
      //                 HomePage(pressedStart: () => _start(shatterFn))));
      //   },
      // );
      // Navigator.push(context, ConcentricPageRoute(builder: (ctx) {
      //   return HomePage();
      // }));

      Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
    });

    _controller = VideoPlayerController.asset('assets/images/logo_anim.mp4');
    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize().then((_) => _controller.play());
    _controller.play();
  }

  void _start(Function shatterFn) async {
    if (kIsWeb) {
      // await _audioPlayer.play();

      while (true) {
        final position = Duration(seconds: 3);
        if (position > 0.seconds) {
          setState(() => control = CustomAnimationControl.playFromStart);
          shatterFn();
          break;
        }
        await 1.milliseconds.delay;
      }
    } else {
      setState(() => control = CustomAnimationControl.playFromStart);
      shatterFn();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
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
            : Center(child: CircularProgressIndicator())
      ],
    );
    // Image.asset(
    //   "assets/images/LOGO_BH_LIGHT.png",
    //   fit: BoxFit.cover,
    //   width: MediaQuery.of(context).size.width,
    //   height: MediaQuery.of(context).size.height,
    // );
  }
}
