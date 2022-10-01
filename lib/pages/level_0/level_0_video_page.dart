// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
// import 'package:flutter/services.dart';
//
// class BackgroundVideo extends StatefulWidget {
//   @override
//   _BackgroundVideoState createState() => _BackgroundVideoState();
// }
//
// class _BackgroundVideoState extends State<BackgroundVideo> {
//   // TODO 4: Create a VideoPlayerController object.
//   late VideoPlayerController _controller;
//
//   // TODO 5: Override the initState() method and setup your VideoPlayerController
//   @override
//   void initState() {
//     super.initState();
//     // Pointing the video controller to our local asset.
//     _controller = VideoPlayerController.asset("assets/images/level_0/level_0_last_video.mp4")
//       ..initialize().then((_) {
//         // Once the video has been loaded we play the video and set looping to true.
//         _controller.play();
//         _controller.setLooping(true);
//         setState(() {});
//       });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//           children: <Widget>[
//             // TODO 7: Add a SizedBox to contain our video.
//             SizedBox.expand(
//               child: FittedBox(
//                 // If your background video doesn't look right, try changing the BoxFit property.
//                 // BoxFit.fill created the look I was going for.
//                 fit: BoxFit.fill,
//                 child: SizedBox(
//                   width: _controller.value.size?.width ?? 0,
//                   height: _controller.value.size?.height ?? 0,
//                   child: VideoPlayer(_controller),
//                 ),
//               ),
//             ),
//           ],
//
//     );
//   }
//
//   // TODO 8: Override the dipose() method to cleanup the video controller.
//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }
// }
