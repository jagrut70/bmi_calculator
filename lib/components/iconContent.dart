import 'package:flutter/material.dart';
import 'constant.dart';

class IconContent extends StatelessWidget {
  IconContent({ this.name, this.icontype});
  final String name;
  final IconData icontype;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icontype,
          size: 70.0,
        ),
        SizedBox(height: 15.0,),
        Text(name, style: kNameTextStyle,
        ),
      ],
    );
  }
}

