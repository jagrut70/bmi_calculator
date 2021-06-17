import 'package:bmi_calculator/screen/results.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import '../comonents/card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../comonents/iconContent.dart';
import '../comonents/constant.dart';
import '../comonents/bottom.dart';
import '../comonents/roundButton.dart';
import 'results.dart';
import 'package:bmi_calculator/calculator_brain.dart';

class Inputpage extends StatefulWidget {
  const Inputpage({key}) : super(key: key);

  @override
  _InputpageState createState() => _InputpageState();
}

Color maleCardColor = kInactivecardcolour;
Color femaleCardColor = kInactivecardcolour;

enum Gender{
  male,
  female
}
int height = 180;
int weight = 60;
int age = 19;
Gender selectedGender;
class _InputpageState extends State<Inputpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Center
            (child: Text('BMI CALCULATOR',style: GoogleFonts.nunitoSans(
            fontSize: 20.0,
          ),
          ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(child: Row(
              children: [
                Expanded(child: ReuableCard(
                  onPress: (){
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.male ? kActivecardcolour : kInactivecardcolour,
                  cardChild: IconContent(name: 'MALE', icontype: FontAwesomeIcons.mars,),
                ),
                ),
                Expanded(child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  child: ReuableCard(
                      colour: selectedGender == Gender.female ? kActivecardcolour : kInactivecardcolour,
                    cardChild: IconContent(name: 'FEMALE', icontype: FontAwesomeIcons.venus,),
                  ),
                ),
                ),
              ],
            ),
            ),
            Expanded(child: ReuableCard(
              colour: kActivecardcolour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(flex: 5,),
                  Text('HEIGHT',
                  textAlign: TextAlign.center,
                  style: kNameTextStyle),
                  Spacer(flex: 3,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: kNumberStyle),
                      Text(' cm', style: kNameTextStyle),
                    ],
                  ),
                  Spacer(flex: 2,),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: Color(0xFFEB1555),
                      inactiveTrackColor: Color(0xFF8D9E98),
                      activeTrackColor: Color(0xffffffff),
                      overlayColor: Color(0x15EB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 13.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 27.0),

                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newvalue){
                        setState(() {
                          height = newvalue.toInt();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            ),
            Expanded(child: Row(
              children: [
                Expanded(child: ReuableCard(colour: kActivecardcolour,
                  cardChild: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Spacer(),
                      Text('WEIGHT',style: kNameTextStyle,),
                      SizedBox(height: 15.0,),
                      Text(weight.toString(), style: kNumberStyle,),
                      SizedBox(height: 15.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(icon: FontAwesomeIcons.minus,
                          onPress: (){
                            setState(() {
                              weight--;
                            });
                          } ),
                          SizedBox(
                            width: 20.0,
                          ),
                          RoundIconButton(icon: FontAwesomeIcons.plus,
                          onPress: (){
                            setState(() {
                              weight++;
                            });
                          },),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),),
                ),
                Expanded(child: Card(color: kActivecardcolour,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(),
                    Text('AGE',style: kNameTextStyle,),
                    SizedBox(height: 15.0,),
                    Text(age.toString(),style: kNumberStyle,),
                    SizedBox(height: 15.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(icon: FontAwesomeIcons.minus,
                        onPress: (){
                          setState(() {
                            age--;
                          });
                        },),
                        SizedBox(
                          width: 20.0,
                        ),
                        RoundIconButton(icon:  FontAwesomeIcons.plus,
                        onPress: (){
                          setState(() {
                            age++;
                          });
                        },),
                      ],
                    ),
                    Spacer(),
                  ],
                ),),
                ),
              ],
            ),
            ),
            BottomButton(buttonTitle: 'CALCULATE',
              onTap: (){

              CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);

              Navigator.push(context, MaterialPageRoute(builder: (context)=> Result(bmiResult: calc.calculateBMI(), interpretation: calc.getInterPretation(), resultText: calc.getResult())));
            },
            ),
          ],
        ),
    );
  }
}


