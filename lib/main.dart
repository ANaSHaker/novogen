import 'package:flutter/material.dart';
import 'package:novogen/Home.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'About.dart';
import 'Call.dart';
import 'Products.dart';

void main() => runApp(MaterialApp(
  home : Splash(),
  title : "Novogen",
  debugShowCheckedModeBanner: false,
));

//------------------------------------------Splash -----------------------------------------------------------------

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}


class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      image: Image(image: AssetImage("assets/splash.jpg")),
      loaderColor: Colors.black,
      photoSize: 100.0,
      backgroundColor: Colors.white,
      navigateAfterSeconds: BottomNavBar(),

    );
  }
}
//---------------------------------------- Bottom Navigation Bar ----------------------------------------------------------------

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  // ignore: unused_field
  int pageIndex = 0;
  final Products _products = Products();
  final Novogen _novogen = Novogen();
  final Call _call = Call();
  final About _about = About();

  Widget _showPage = new Novogen();

  Widget _pageChooser(int page){
    switch(page){
      case 0 :
        return _novogen;
        break;
      case 1 :
        return _products;
        break;
      case 2 :
        return _call;
        break;
      case 3 :
        return _about;
        break;
      default :
        return Container(
          child: Center(
              child : Text("no page found")
          ),
        );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          initialIndex: pageIndex,


          items: <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.list, size: 30),
            Icon(Icons.call, size: 30),
            Icon(Icons.info, size: 30),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.black38,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),
          onTap: (int tappedIndex) {
            setState(() {
              _showPage = _pageChooser(tappedIndex);
            });
          },
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: _showPage,
          ),
        ));
  }
}




