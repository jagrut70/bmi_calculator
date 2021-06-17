import 'package:flutter/material.dart';

class ReuableCard extends StatelessWidget {
  ReuableCard( { @required this.colour, this.cardChild, this.onPress } );

  final Function onPress;
  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
          child: cardChild,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: colour,
          ),
      ),
    );
  }
}
