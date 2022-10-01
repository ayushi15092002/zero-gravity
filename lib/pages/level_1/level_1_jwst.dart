import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'dart:typed_data';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:zero_gravity/pages/level_page.dart';
import 'package:zero_gravity/widgets/button_widget.dart';
import 'package:zero_gravity/widgets/next_button_widget.dart';

class LevelPage1JWST extends StatefulWidget {
  const LevelPage1JWST({Key? key}) : super(key: key);

  @override
  State<LevelPage1JWST> createState() => _LevelPage1JWSTState();
}

class _LevelPage1JWSTState extends State<LevelPage1JWST> {
  var size, height, width;
  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
  bool showNotification = false;

  @override
  void initState() {
    audioPlayer.open(Audio('assets/sound/level_0_scientist.mp4'),autoStart: true,showNotification: true);
    audioPlayer.play();
    super.initState();
  }
  @override
  void dispose() {
    audioPlayer.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery
        .of(context)
        .size;
    height = size.height;
    width = size.width;
    return Scaffold(
        body: SizedBox(
          height: height,
          width: width,
          child: Stack(
            children: [
              Image.asset("assets/images/level_0/level_0_bg.gif", height: height, width: width, fit: BoxFit.fill,),

            ]
          )
        )
    );
  }
}