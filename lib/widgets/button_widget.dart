
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget{
  final String title;
  final VoidCallback  onPressed;
  const ButtonWidget({Key? key, required this.title, required this.onPressed, }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: SizedBox(
        height: 65,
        width: 175,
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all(Colors.black),
                textStyle: MaterialStateProperty.all(TextStyle(color: Colors.white, fontFamily: "Rye")),
                elevation: MaterialStateProperty.all(5.0),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    )
                )),
          onPressed: onPressed,
            child: Text(
              title,
              style:  const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
        ),
      ),
    );
  }
}
