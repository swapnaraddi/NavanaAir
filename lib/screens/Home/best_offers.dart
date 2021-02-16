import 'package:flutter/material.dart';
import 'package:navana_air/comman/colors.dart';

class BestOffers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height *0.2,
                  width: MediaQuery.of(context).size.width * 0.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(image: NetworkImage('https://www.ytravelblog.com/wp-content/uploads/2018/01/Sightseeing-New-York-City-Sightseeing-pass.jpg'),
                    fit: BoxFit.fill)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Align(child: Text('From \$499',style: TextStyle(
                      color: CustomizeColors.textWhiteColor,fontWeight: FontWeight.bold
                    ),),alignment: Alignment.bottomLeft,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Thailand",style: TextStyle(
                        fontSize: 16
                      ),),
                      Text('Bangkok',style: TextStyle(
                        fontSize: 16,color: Colors.grey
                      ),)
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height *0.2,
                  width: MediaQuery.of(context).size.width * 0.6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: NetworkImage('https://uceap.universityofcalifornia.edu/sites/default/files/marketing-images/program-page-images/made-in-italy-glance.jpg'),
                          fit: BoxFit.fill)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Align(child: Text('From \$499',style: TextStyle(
                        color: CustomizeColors.textWhiteColor,fontWeight: FontWeight.bold
                    ),),alignment: Alignment.bottomLeft,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Paris",style: TextStyle(
                          fontSize: 16
                      ),),
                      Text('France',style: TextStyle(
                          fontSize: 16,color: Colors.grey
                      ),)
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height *0.2,
                  width: MediaQuery.of(context).size.width * 0.6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: NetworkImage('https://media-cdn.tripadvisor.com/media/photo-s/02/27/92/22/lady-liberty-facing-the.jpg'),
                          fit: BoxFit.fill)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Align(child: Text('From \$559',style: TextStyle(
                        color: CustomizeColors.textWhiteColor,fontWeight: FontWeight.bold
                    ),),alignment: Alignment.bottomLeft,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Paris",style: TextStyle(
                          fontSize: 16
                      ),),
                      Text('France',style: TextStyle(
                          fontSize: 16,color: Colors.grey
                      ),)
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
