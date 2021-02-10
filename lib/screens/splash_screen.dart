import 'dart:async';
import 'package:flutter/material.dart';
import 'package:navana_air/comman/colors.dart';

import 'launcher_screen/launcher_screen.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>LauncherScreen())));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomizeColors.ThemeColor,
      body: Container(
       // padding: const EdgeInsets.all(8),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Image(image: AssetImage('assets/images/navana_logo.png'),height: 100,width: 100,),
               RichText(
                 text: TextSpan(
                   text: 'navana ',
                   style: TextStyle(
                     fontSize: 40
                   ),
                   children: <TextSpan>[
                     TextSpan(
                       text: 'air',style: TextStyle(
                       color: CustomizeColors.PinkColor,fontSize: 40
                     )
                     )
                   ]
                 ),
               ),
            ],
          ),
        ),
      ),
    );
  }
}
