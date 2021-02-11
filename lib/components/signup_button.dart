import 'package:flutter/material.dart';
import 'package:navana_air/comman/colors.dart';

//Customized Reusable Button
class SignUpButton extends StatelessWidget {
  final String text;
  final GestureTapCallback onPressed;

  const SignUpButton({Key key, this.text, this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width *0.5,
         child: RaisedButton(
            child: Text(
             text,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            padding: const EdgeInsets.all(15),
            color: CustomizeColors.buttonPinkColor,
            textColor: CustomizeColors.textWhiteColor,
            onPressed: onPressed,
          ),
      );
  }
}


