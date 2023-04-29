import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class icon extends StatelessWidget {
  icon({this.iconsym=FontAwesomeIcons.child,this.gender='n'});
  final IconData iconsym;
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Icon(
          iconsym,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          gender,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}


