import 'package:flutter/material.dart';
import 'package:navana_air/comman/colors.dart';
import 'package:navana_air/components/customize_flat_button.dart';
import 'package:navana_air/screens/Home/best_offers.dart';
import 'package:navana_air/screens/Home/menu.dart';
import 'package:navana_air/screens/Home/popular_places.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            'Home',
            style: TextStyle(fontSize: 30, color: CustomizeColors.ThemeColor),
          ),
          SizedBox(height: 15),
          MenuItems(),
          SizedBox(height: 20),
          Text('Best Offers',style: TextStyle(
            fontSize: 20,fontWeight: FontWeight.bold
          ),),
         // SizedBox(height: 8),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recommended Destination',style: TextStyle(
                    color: Colors.grey
                  ),),
                 CustomizeFlatButton(text: 'View All',
                   onPressed: (){},
                 )
                ],
              ),
              BestOffers()
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Popular Places',style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold
              ),),
              CustomizeFlatButton(text: 'View All',
                onPressed: (){},
              )
            ],
          ),
          PopularPlaces(),
        ],
      ),
    ));
  }
}
