import 'package:flutter/material.dart';
import 'package:navana_air/comman/colors.dart';

class CustomizeFlatButton extends StatelessWidget {
  final String text;
  final GestureTapCallback onPressed;

  const CustomizeFlatButton({Key key, this.text, this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
