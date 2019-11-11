import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


class Novogen extends StatefulWidget {
  @override
  _NovogenState createState() => _NovogenState();
}

class _NovogenState extends State<Novogen> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("assets/main.png"),
          AssetImage("assets/main4.png"),
          AssetImage("assets/main3.png"),
          AssetImage("assets/main2.png"),
          AssetImage("assets/main5.png"),
          AssetImage("assets/main6.png"),


        ],
        autoplay: false,
        animationCurve: Curves.linearToEaseOut,
        animationDuration: Duration(seconds: 20),

        dotSize: 4.0,
        indicatorBgPadding: 2.0,
      ),

    );
    return Scaffold(
      appBar: null,
      body: ListView(
        children: <Widget>[
          image_carousel,
          Padding(padding: EdgeInsets.all(5.0)),
          Text("Why Novogen ?",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Color(0xffdcd301)),),
          Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(8.0)),
              Text("Novogen Pharma is Introducing \n it’s range of sports \n nutrition supplements", textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
              Padding(padding: EdgeInsets.all(8.0)),
              Image.asset("assets/y1.png", width: 300.0,),
            ],
          ),
          Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(8.0)),
              Text("All our products are manufactured \n in a pharmaceutical facility and \n are registered in the Egyptian Ministry Of Health,", textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
              Padding(padding: EdgeInsets.all(8.0)),
              Image.asset("assets/y2.png", width: 300.0,),
            ],
          ),
          Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(8.0)),
              Text("Because we only offer premium quality \n supplements, all active ingredients are imported \n from the best European suppliers.", textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
              Padding(padding: EdgeInsets.all(8.0)),
              Image.asset("assets/y3.png", width: 300.0,),
            ],
          ),
        ],
      ),
    );
  }
}


