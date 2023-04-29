import 'package:flutter/material.dart';

class container extends StatelessWidget {
  container({@required this.colour=Colors.red, required this.cardchild});

  final Color colour;
  final Widget cardchild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
       // color: Color(0xFF1D1E33),
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}