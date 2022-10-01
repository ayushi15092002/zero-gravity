import 'package:flutter/material.dart';
import '../widgets/button_widget.dart';
import 'package:flutter/services.dart';
import 'level_0/level_0_main.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class LevelPage extends StatefulWidget {
  const LevelPage({Key? key}) : super(key: key);

  @override
  State<LevelPage> createState() => _LevelPageState();
}

class _LevelPageState extends State<LevelPage> {
  var size, height, width;
  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
  @override
  void initState() {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight]);
    audioPlayer.open(Audio('assets/sound/bg.mp3'),autoStart: true,showNotification: true);
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
                  Image.asset("assets/images/level_page/level_page_bg_hor.png",
                    height: height, width: width, fit: BoxFit.fill,),
                  Align(
                    alignment: Alignment.topLeft,
                      // left: 0,
                      // top: 0,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const LevelPage0()),
                          );
                        },
                          child: Image.asset(
                            "assets/images/level_page/level_0.png",
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          )
                      )
                  ),
                  Positioned(
                      left: 235,
                      bottom: 0,
                      child: GestureDetector(
                          child: Image.asset("assets/images/level_page/level_1.png",
                            height: 125,
                            width: 125,
                            fit: BoxFit.fill,
                          )
                      )
                  ),
                  Positioned(
                      left: 350,
                      top: 10,
                      child: GestureDetector(
                          child: Image.asset(
                            "assets/images/level_page/level_2.png",
                            height: 125,
                            width: 125,
                            fit: BoxFit.fill,
                          )
                      )
                  ),
                  Positioned(
                      right: 125,
                      bottom: 25,
                      child: GestureDetector(
                          child: Image.asset(
                            "assets/images/level_page/level_3.png",
                            height: 125,
                            width: 125,
                            fit: BoxFit.fill,
                          )
                      )
                  ),
                  Positioned(
                      right: 120,
                      top: 20,
                      child: GestureDetector(
                          child: Image.asset(
                            "assets/images/level_page/level_4.png",
                            height: 125,
                            width: 125,
                            fit: BoxFit.fill,
                          )
                      )
                  ),
                ]
            )
        ));
  }
}