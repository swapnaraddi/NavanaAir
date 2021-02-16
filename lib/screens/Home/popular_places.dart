import 'package:flutter/material.dart';

class PopularPlaces extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: NetworkImage(
                    'https://www.travelanddestinations.com/wp-content/uploads/2019/05/Thailand-Beaches-and-Scenery.jpg'),
                fit: BoxFit.fill
              ),
            ),
          ),
          SizedBox(height: 8),
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: NetworkImage(
                      'https://media-cdn.tripadvisor.com/media/photo-s/02/27/92/22/lady-liberty-facing-the.jpg'),
                  fit: BoxFit.fill
              ),
            ),
          ),
        ],
      ),
    );
  }
}
