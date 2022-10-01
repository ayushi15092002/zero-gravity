
import 'package:flutter/material.dart';

class NextButtonWidget extends StatelessWidget{
  final String title;
  final VoidCallback  onPressed;
  const NextButtonWidget({Key? key, required this.title, required this.onPressed, }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: SizedBox(
        height: 100,
        width: 100,
        child:
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
              MaterialStateProperty.all(Colors.transparent),
              // elevation: MaterialStateProperty.all(5.0),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(75.0),
                  )
              )),
          onPressed: onPressed,
          child: Image.asset("assets/images/level_0/next_button.png", height: 50, width: 50, fit: BoxFit.cover,)
        ),
      ),
    );
  }
}
