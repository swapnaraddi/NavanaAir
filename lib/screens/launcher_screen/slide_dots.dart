import 'package:flutter/material.dart';
import 'package:navana_air/comman/colors.dart';

//Indicators(Dots) which are used in launcher screen to show which image is running/displaying currently
class SlideDots extends StatelessWidget {
  bool isActive;
  SlideDots(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: isActive ? 8 : 8,
      width: isActive ? 8 : 8,
      decoration: BoxDecoration(
        color: isActive ? CustomizeColors.buttonPinkColor : CustomizeColors.IndicatorGreyColor,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}