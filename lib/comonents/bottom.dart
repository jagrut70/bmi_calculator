import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {

  BottomButton({@required this.onTap,@required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(

        child: Expanded(
          child: Center(child: Text(buttonTitle,style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 2,
          ),
          ),
          ),
        ),
        color: Color(0xFFEB1555),
        margin: EdgeInsets.only(top: 10.0,),
        height: 60.0,
        width: double.infinity,

      ),
    );
  }
}
