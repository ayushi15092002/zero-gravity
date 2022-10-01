import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'dart:typed_data';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:zero_gravity/pages/level_page.dart';
import 'package:zero_gravity/widgets/button_widget.dart';
import 'package:zero_gravity/widgets/next_button_widget.dart';

class LevelPage0 extends StatefulWidget {
  const LevelPage0({Key? key}) : super(key: key);

  @override
  State<LevelPage0> createState() => _LevelPage0State();
}

class _LevelPage0State extends State<LevelPage0> {
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

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 70),
                    child: Image.asset(
                      !showNotification
                          ? "assets/images/level_0/scientist.gif"
                          : "assets/images/level_0/scientist.png",
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Container(
                      height: 75,
                      width: 700,
                      decoration: const BoxDecoration(
                        color: Color(0xffa6a6a6),
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Center(
                          child: DefaultTextStyle(
                            style: const TextStyle(
                              fontSize: 25.0,
                              fontFamily: 'popin',
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                            child: AnimatedTextKit(
                                isRepeatingAnimation: false,
                                onFinished: (){
                                  setState(() {
                                    showNotification = true;
                                  });
                                },
                                animatedTexts: [
                                  TyperAnimatedText('Hi ! I am Edwin, the second administrator of NASA'
                                      ,speed: const Duration(milliseconds: 75)),
                                  TyperAnimatedText('I have some grave news for you !,'
                                      ,speed: const Duration(milliseconds: 75)),
                                  TyperAnimatedText('I have been studying meteorites for as long as I can remember but none have caught my eye as '
                                      ,speed: const Duration(milliseconds: 75)),
                                  TyperAnimatedText('ceres rock has… And for a very good reason too!'
                                      ,speed: const Duration(milliseconds: 75)),
                                  TyperAnimatedText(' Ceres rock has a very peculiar trajectory with Earth as its final destination.'
                                      ,speed: const Duration(milliseconds: 75)),
                                  TyperAnimatedText('According to my calculations, It is set to hit the earth after 100 years from now,'
                                      ,speed: const Duration(milliseconds: 75)),
                                  TyperAnimatedText(' that is the year 2022 and will wipe out all the signs of life with it.'
                                      ,speed: const Duration(milliseconds: 75)),
                                  TyperAnimatedText('If necessary precautions are not taken beforehand, then it will surely be the end of our existence.'
                                      ,speed: const Duration(milliseconds: 75)),
                                  TyperAnimatedText('The fate of humanity depends on you, make your choices wisely'
                                      ,speed: const Duration(milliseconds: 75)),
                                  TyperAnimatedText('All the best !!!!'
                                      ,speed: const Duration(milliseconds: 75)),
                                  TyperAnimatedText(' My hints will help you along the way!'
                                      ,speed: const Duration(milliseconds: 75)),
                                ]
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                if(showNotification)
                  Align(
                    alignment: Alignment.centerRight,
                    child: NextButtonWidget(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LevelPage()),
                        );
                      },
                      title: 'NEXT',
                    ),
                  ),
      ]
    )
        )
    );
  }
}