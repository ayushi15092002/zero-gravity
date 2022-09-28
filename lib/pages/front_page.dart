import 'package:flutter/material.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  var size, height, width;

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
            Image.asset("assets/images/front_page_bg.png",height: height, width: width, fit: BoxFit.cover,),
            Positioned(
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.only(right: 150),
                  child: Image.asset("assets/images/big_earth.png",height: 400,width: 400, fit: BoxFit.cover,),
                )
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: Column(
                  children: [
                    Image.asset("assets/images/heading1.png",height: 350, width: 350,fit: BoxFit.cover,),
                  ],
                ),
              )
            ),
            Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 150.0, left: 225),
                  child: Image.asset("assets/images/fire_meteroid.gif",height: 350, width: 350,fit: BoxFit.cover,),
                )
            ),
            Positioned(
                top: 0,
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.only(top : 625, left: 200.0,),
                  child: Image.asset("assets/images/small_earth.png",),
                )
            ),
          ],
        ),
      ),
    );
  }
}