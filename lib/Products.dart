import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


Future launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url, forceSafariVC: true, forceWebView: true);
  } else {
    print("Can't Launch ${url}");
  }
}
class ProductsDetails extends StatefulWidget {
  ProductsDetails({Key key}) : super(key: key);

  _ProductsDetailsState createState() => _ProductsDetailsState();
}

class _ProductsDetailsState extends State<ProductsDetails> {
  var ProductsList=[
    {
      "title":"100 % Whey Protein",
      "price":"EGP 500.00",
      'prodlink' : "http://victorylinkexpress.com/trainingtwo/product/100-whey-protein/",
      "image":"assets/p1.png",
      "image2":"assets/pd1.png",
      "subtitle": "Novogen whey protein is made with the purest cross flow micro and ultra filtered whey protein concentrate. Novogen whey protein is designed for all athletes and bodybuilders who are looking for more muscle gain, strength and better performance. Novogen whey protein is also a perfect high protein meal replacement option for individuals seeking a healthy and nutritious alternative to standard diets and to support overall wellness. Protein is the building block of muscles and is essential for muscle repair and growth after exercise.",
    },
    {
      "title":"BCAA+GLUTAMINE COMPLEX",
      'prodlink' : "http://victorylinkexpress.com/trainingtwo/product/bcaaglutamine-complex/",
      "price":"EGP 450.00",
      "image":"assets/p2.png",
      "image2":"assets/pd2.png",
      "subtitle": "Novogen pharma BCAA + Glutamine complex contains 8g of BCAAs present in the perfectly designed 2:1:2 ratio of leucine , isoleucine , and valine. We included 5g of Glutamine , creating the perfect complex for promoting muscle recovery and supporting muscle growth before , during and after exercise.",

    },
    {
      "title":"Whey Protein Isolate 33gm",
      'prodlink' : "http://victorylinkexpress.com/trainingtwo/product/whey-protein-isolate-33gm/",
      "price":"EGP 30.00",
      "image":"assets/p3.png",
      "image2":"assets/pd3.png",
      "subtitle": "Novogen Whey Protein is made with the purest cross flow micro and ultra-filtered whey protein isolate, as the primary source of protein. Novogen Whey Protein is designed for all athletes and bodybuilders who are looking for more muscle gain, strength and better performance. Novogen Whey Protein is also a perfect high protein meal replacement option for individuals seeking a healthy and nutritious alternative to standard diets and to support overall wellness. Protein is the building block of muscles and is essential for muscle repair and growth after exercise.",

    },
    {
      "title":"WHEY PROTEIN ISOLATE",
      'prodlink' : "http://victorylinkexpress.com/trainingtwo/product/whey-protein-isolate/",
      "price":"EGP 1.500.00",
      "image":"assets/p4.png",
      "image2":"assets/pd4.png",
      "subtitle": "Novogen Whey Protein is made with the purest cross flow micro and ultra-filtered whey protein isolate, as the primary source of protein. Novogen Whey Protein is designed for all athletes and bodybuilders who are looking for more muscle gain, strength and better performance. Novogen Whey Protein is also a perfect high protein meal replacement option for individuals seeking a healthy and nutritious alternative to standard diets and to support overall wellness. Protein is the building block of muscles and is essential for muscle repair and growth after exercise.",

    },
    {
      "title":"EXTREME MASS GAINER",
      "price":"EGP 950.00",
      'prodlink' : "http://victorylinkexpress.com/trainingtwo/product/extreme-mass-gainer/",
      "image":"assets/p5.png",
      "image2":"assets/pd5.png",
      "subtitle": "Gaining muscle mass and size can be very challenging when you have a fast metabolism or find it difficult to consume enough calories and protein during the day. Novogen Mass Gainer is a high quality mass and size gainer that is loaded with enough protein , BCAA’s , Calories, and the other nutrients to help even the hardest gainers pack on mass and size. Novogen Mass Gainer also tastes delicious and amazing mixability.",

    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: ProductsList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
      itemBuilder: (BuildContext context, int index){
        return SingleProductsList(
          prodtitle: ProductsList[index]['title'],
          prodlink: ProductsList[index]['prodlink'],
          prodprice: ProductsList[index]['price'],
          prodsubtitle: ProductsList[index]['subtitle'],
          prodImage: ProductsList[index]['image'],
          prodImage2: ProductsList[index]['image2'],

        );
      },
    );
  }
}

class SingleProductsList extends StatelessWidget {
  final prodtitle;
  final prodprice;
  final prodImage;
  final prodsubtitle;
  final prodImage2;
  final prodlink;

  SingleProductsList({
    this.prodtitle,
    this.prodlink,
    this.prodprice,
    this.prodImage,
    this.prodsubtitle,
    this.prodImage2,
  });



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(padding: const EdgeInsets.only(left: 8.0, top: 8.0),
      child: Card(
        elevation: 6.0,
        color: Colors.cyanAccent,
        child: Hero(
          tag:prodtitle,
          child: Material(
            child: InkWell(
              onTap: () {



                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => PageDetails(
                  pageTitle: prodtitle,
                  pageImage: prodImage2,
                  pageSubtitle: prodsubtitle,
                  pagePrice : prodprice,
                  pageLink : prodlink,

                )));

              },
              child: GridTile(
                footer: Container(
                  height: 50.0,
                  color: Colors.white70,
                  child: ListTile(
                    title: Text(prodtitle, style:TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 22.0),
                        textAlign: TextAlign.center, ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Image.asset(prodImage, fit:BoxFit.cover),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:null,
      body: Container(
        child: ProductsDetails(),
      ),
    );
  }
}





//-------------------------------------------------- page details -----------------------------------------------------------


class PageDetails extends StatefulWidget {

  final pageTitle;
  final pageImage;
  final pageSubtitle;
  final pagePrice;
  final pageLink;
  PageDetails({this.pageTitle, this.pageImage, this.pageSubtitle,this.pagePrice,this.pageLink});
  @override
  _PageDetailsState createState() => _PageDetailsState();
}

class _PageDetailsState extends State<PageDetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:null,
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
            height: 300.0,

            child: GridTile(child:Container(
              color: Colors.white,
              child:Image.asset(widget.pageImage),),
            ),
          ),
          ListTile(
            title: Text(widget.pageTitle, style:TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 20.0),
                textAlign: TextAlign.center),),
          Padding(padding: EdgeInsets.only(left: 20, top: 20.0, bottom: 15.0),
            child: Text(widget.pagePrice,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0,color: Color(0xffdcd301)),),),
          FlatButton(onPressed: (){
            launchURL(widget.pageLink);}, child: Text("Buy Now",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 28.0),),
          color: Color(0xffdcd301),padding: EdgeInsets.all(15.0),),
          Padding(padding: EdgeInsets.only(top:60.0)),
          Padding(padding: EdgeInsets.all(8.0),child: Text("Description : ",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,),),),
          ListTile(title: Text(widget.pageSubtitle, style:TextStyle( color: Colors.black,),
              textAlign: TextAlign.start),),
          Padding(padding: EdgeInsets.all(100.00),
            child: Container(
              child: Image.asset("images/logo.png"),
              height: 100.0,
              alignment: Alignment.bottomCenter,
            ),
          )
        ],
      ),
    );
  }
}

