import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

const  facebookUrl = "https://www.facebook.com/Novogenpharma/";
const  instegramUrl = "https://www.instagram.com/novogenpharma/?hl=en";
const  mapUrl  = "https://goo.gl/maps/4DknTXnwihnjjoR58";
Future launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url, forceSafariVC: true, forceWebView: true);
  } else {
    print("Can't Launch ${url}");
  }
}

class Call extends StatefulWidget {
  @override
  _CallState createState() => _CallState();
}

class _CallState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:null,

      body: ListView(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(10.0)),
          Text("Follow US", textAlign: TextAlign.center,
        style: TextStyle(fontSize: 35.0,fontWeight: FontWeight.bold,color: Color(0xffdcd301)),),
          Padding(padding: EdgeInsets.all(10.0)),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(icon: Icon(FontAwesomeIcons.facebookF,color: Colors.indigo, size: 40.0,), onPressed: (){
                launchURL(facebookUrl);


              }),
              Padding(padding: EdgeInsets.all(20.0)),
              IconButton(icon: Icon(FontAwesomeIcons.instagram,color: Colors.pink, size: 40.0,), onPressed: () {
                launchURL(instegramUrl);
              }
              ),
              Padding(padding: EdgeInsets.all(20.0)),
              IconButton(icon: Icon(FontAwesomeIcons.internetExplorer,color: Colors.blue, size: 40.0,),onPressed: () {
                null;
              }),

            ],
          ),
          Padding(padding: EdgeInsets.all(20.0)),
          Column(
            children: <Widget>[
              FlatButton( onPressed: () {
                launchURL(mapUrl);
              }, child:Image.asset("assets/loc.png",height: 200.0, width: 300.0,),),

              Padding(padding: EdgeInsets.all(20.0)),

              Image.asset("assets/call.png",height: 200.0, width: 300.0,),
              Padding(padding: EdgeInsets.all(20.0)),

              Image.asset("assets/email.png",height:200.0, width: 300.0,),
            ],
          ),











        ],
      ) ,
    );
  }
}
