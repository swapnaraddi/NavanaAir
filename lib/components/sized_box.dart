import 'package:flutter/material.dart';

class MinSizedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: MediaQuery.of(context).size.width *0.1,
      ),
    );
  }
}


class MaxSizedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: MediaQuery.of(context).size.height *0.2,
      ),
    );
  }
}

