import 'package:flutter/material.dart';
import 'package:navana_air/comman/colors.dart';

class SignUpButton extends StatelessWidget {
  final String text;
  final GestureTapCallback onPressed;

  const SignUpButton({Key key, this.text, this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text(
             text,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.all(15),
            color: CustomizeColors.PinkColor,
            textColor: Colors.white,
            onPressed: () {
            },
          ),
        ],
      );
  }
}


