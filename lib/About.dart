import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: ListView(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(8.0)),

    SizedBox(
    width: 250.0,
    child: TypewriterAnimatedTextKit(
    onTap: () {
    print("Tap Event");
    },
    text: [
    "About Us"
    ],
    textStyle: TextStyle(
    fontSize: 30.0,
    fontFamily: "Agne",
      color: Color(0xffdcd301),
      fontWeight: FontWeight.bold,

    ),
    textAlign: TextAlign.center,
    alignment: AlignmentDirectional.center // or Alignment.topLeft
    ),
    ),

          Padding(padding: EdgeInsets.all(8.0)),
         ListTile(
           title:   Text("Novogen Pharma was founded in 2014 and quickly became one of the leading pharmaceutical companies in the middle east. Novogen Pharma specializes in the production, marketing and distribution of premium and high tech medicines and supplements. Because growth and diversity is our passion, Novogen Pharma was established in Egypt in 2017 In partnership with AUG pharma which has a state of the art pharmaceutical manufacturing facility we launched our range of nutrition products in the Egyptian market. Our goal was and always will be to deliver the best quality products that will benefit our growing customers.",
             textAlign: TextAlign.center,
             style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
         ),
          Padding(padding: EdgeInsets.all(5.0)),


    Row(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
    SizedBox(width: 15.0, ),
    Text(
    "Our",
    style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Color(0xffdcd301),),textAlign: TextAlign.center,
    ),
    SizedBox(width: 8.0,),
    RotateAnimatedTextKit(
    onTap: () {
    print("Tap Event");
    },
    text: ["Vision","Vision","Vision"],
    textStyle: TextStyle(fontSize: 30.0, fontFamily: "Horizon",color: Color(0xffdcd301),
      fontWeight: FontWeight.bold,),
    textAlign: TextAlign.center,
    alignment: AlignmentDirectional.center // or Alignment.topLeft
    ),
    ],
    ),

          Padding(padding: EdgeInsets.all(0.0)),
          ListTile(
            title: Text("To improve people’s quality of life by providing quality medicines and nutrients that make a difference.", textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),

                ),
          Padding(padding: EdgeInsets.all(15.0)),



          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(width: 15.0, ),
              Text(
                "Our",
                style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Color(0xffdcd301),),textAlign: TextAlign.center,
              ),
              SizedBox(width: 8.0,),
              RotateAnimatedTextKit(
                  onTap: () {
                    print("Tap Event");
                  },
                  text: ["Mission","Mission","Mission"],
                  textStyle: TextStyle(fontSize: 30.0, fontFamily: "Horizon",color: Color(0xffdcd301),
                    fontWeight: FontWeight.bold,),
                  textAlign: TextAlign.center,
                  alignment: AlignmentDirectional.center // or Alignment.topLeft
              ),
            ],
          ),


          Padding(padding: EdgeInsets.all(0.0)),
          ListTile(
            title: Text("We strive towards better health and overall wellness for everyone,  so it is our goal to provide our customers with the highest quality products that will make a difference.", textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
          ),

        ],
      ),
    );
  }
}
