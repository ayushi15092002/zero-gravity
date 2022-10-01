import 'package:flutter/material.dart';
import 'package:zero_gravity/pages/level_page.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:zero_gravity/widgets/button_widget.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  var size, height, width;
  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

  @override
  void initState() {
    audioPlayer.open(Audio('assets/sound/bg.mp3'),autoStart: true,showNotification: true, loopMode: LoopMode.playlist);
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

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: Stack(
          children: [
            Image.asset("assets/images/front_page/front_page_bg.png",height: height, width: width, fit: BoxFit.cover,),
            Positioned(
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.only(right: 150),
                  child: Image.asset("assets/images/front_page/big_earth.png",height: 400,width: 400, fit: BoxFit.cover,),
                )
            ),
            Positioned(
                top: 0,
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.only(top : 625, left: 200),
                  child: Image.asset("assets/images/front_page/small_earth.png",),
                )
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: Image.asset("assets/images/front_page/escape_the_infinite_space.png",height: 350, width: 350,fit: BoxFit.cover,),
              )
            ),
            Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 150.0, left: 225),
                  child: Image.asset("assets/images/front_page/fire_meteroid.gif",height: 350, width: 350,fit: BoxFit.cover,),
                )
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 250.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonWidget(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LevelPage()),
                        );
                      },
                      title: 'EXPLORE',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ButtonWidget(
                      onPressed: () {  },
                      title: 'HISTORY',
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                top: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.only(top : 625, right: 150),
                  child: Image.asset("assets/images/front_page/telescope.gif",),
                )
            ),
          ],
        ),
      ),
    );
  }
}