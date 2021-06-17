import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slider_button/slider_button.dart';

class WelcomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF030917),
      body: Stack(

        children: [

          Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(flex: 5,),
                Text(
                  'Welcome',
                  style: Theme.of(context).textTheme.headline3.copyWith(color: Colors.white ,fontWeight: FontWeight.w600, letterSpacing: 1,
                  ),
                ),
                Text("We promis that you'll have the most \nfuss-free time with us ever.",
                  style: TextStyle(color: Colors.white.withOpacity(.7), height: 1.4, fontSize: 20),),
                SizedBox(height: 150.0,),

            Center(
              child: SliderButton(
                backgroundColor: Color(0xFF1D1E33),
                action: (){
                  Navigator.pushNamed(context, '/first');
                },
                ///Put label over here
                label: Text(
                  "Slide to open app",
                  style: TextStyle(
                     color: Color(0xff4a4a4a),
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
                icon: Center(
                    child: Icon(

                      FontAwesomeIcons.arrowRight,
                      color: Color(0xFF030917),
                      size: 30.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                ),

                //Put BoxShadow here
                boxShadow: BoxShadow(
                  color: Colors.black,
                  blurRadius: 4,
                ),
              ),
            ),
                Spacer(flex: 2,),
              ],
            ),
          ),
  ],
      ),
      );
  }
}
