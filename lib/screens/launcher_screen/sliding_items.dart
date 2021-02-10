import 'package:flutter/material.dart';
import 'package:navana_air/models/slider.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Container(
            // width: MediaQuery.of(context).size.width,
            // height: orientation == Orientation.portrait ? (MediaQuery.of(context).size.height /2):MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                image: AssetImage(slideList[index]),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
      ],
    );
  }
}