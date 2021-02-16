import 'package:flutter/material.dart';
import 'package:navana_air/comman/colors.dart';

class MenuItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.only(right: 15),
              child: Column(
                children: [
                  Container(
                    child: GestureDetector(
                      child: Icon(
                        Icons.airplanemode_active,
                        color: CustomizeColors.textWhiteColor,
                      ),
                    ),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red),
                  ),
                  SizedBox(height: 8),
                  Text('Flight',style: TextStyle(
                    fontWeight: FontWeight.w400,fontSize: 16
                  ),)
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Container(
                    child: GestureDetector(
                      child: Icon(
                        Icons.hotel,
                        color: CustomizeColors.textWhiteColor,
                      ),
                    ),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.green),
                  ),
                  SizedBox(height: 8),
                  Text('Hotel',style: TextStyle(
                    fontWeight: FontWeight.w400,fontSize: 16
                  ),)
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Container(
                    child: GestureDetector(
                      child: Icon(
                        Icons.car_rental,
                        color: CustomizeColors.textWhiteColor,
                      ),
                    ),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: CustomizeColors.ThemeColor),
                  ),
                  SizedBox(height: 8),
                  Text('Car',style: TextStyle(
                    fontSize: 16,fontWeight: FontWeight.w400
                  ),)
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Container(
                    child: GestureDetector(
                        child: Icon(
                      Icons.restaurant_menu,
                      color: CustomizeColors.textWhiteColor,
                    )),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.pinkAccent),
                  ),
                  SizedBox(height: 8),
                  Text('Restaurant',style: TextStyle(
                    fontWeight: FontWeight.w400,fontSize: 16
                  ),)
                ],
              ),
            ),
            // Container(
            //   padding: const EdgeInsets.all(10),
            //   child: Column(
            //     children: [
            //       Container(
            //         child: Icon(Icons.restaurant_menu,color: CustomizeColors.textWhiteColor,),
            //         height: 60,
            //         width: 60,
            //         decoration: BoxDecoration(
            //             shape: BoxShape.circle,
            //             color: Colors.red
            //         ),
            //       ),
            //       SizedBox(height: 8),
            //       Text('Restaurant')
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
