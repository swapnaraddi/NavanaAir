import 'dart:async';
import 'package:flutter/material.dart';
import 'package:navana_air/comman/string.dart';
import 'package:navana_air/components/signup_button.dart';
import 'package:navana_air/screens/launcher_screen/slide_dots.dart';
import 'package:navana_air/screens/launcher_screen/sliding_items.dart';
import 'package:navana_air/screens/signup_screen.dart';


//Launcher screen which appears after the Splash screen
class LauncherScreen extends StatefulWidget {
  @override
  _LauncherScreenState createState() => _LauncherScreenState();
}

class _LauncherScreenState extends State<LauncherScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      // trying to handle the exception within the try catch block
      try{
        if (_currentPage < 2) {
          _currentPage++;
        } else {
          _currentPage = 0;
        }
        _pageController.animateToPage(
          _currentPage,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeIn,
        );
      }catch (e){
        print(e.toString());
      }

      // if (_currentPage < 2) {
      //   _currentPage++;
      // } else {
      //   _currentPage = 0;
      // }
      // _pageController.animateToPage(
      //   _currentPage,
      //   duration: Duration(milliseconds: 500),
      //   curve: Curves.easeIn,
      // );
    });
  }

  //dispose method use to release the memory allocated to variables when state object is removed.
  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  //This method will call for changing the page
  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: <Widget>[
                    PageView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: _pageController,
                      onPageChanged: _onPageChanged,
                      itemCount: slideList.length,
                      itemBuilder: (ctx, i) => SlideItem(i),
                    ),
                    Stack(
                      alignment: AlignmentDirectional.topStart,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(bottom: 35),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              for(int i = 0; i<slideList.length; i++)
                                if( i == _currentPage )
                                  SlideDots(true)
                                else
                                  SlideDots(false)
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SignUpButton(
                onPressed: (){
                Navigator.pushNamed(context, '/signup');
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                },
              text: TextString.start_booking,),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}