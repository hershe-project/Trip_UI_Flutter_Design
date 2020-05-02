import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:trip/home.dart';

class Book extends StatefulWidget {
  final String image;
  final String plaecName;
  final String location;
  final String rate;

  Book({this.image, this.location, this.plaecName, this.rate});
  @override
  _BookState createState() => _BookState();
}

class _BookState extends State<Book> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(30.0),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.image),
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(Colors.black26, BlendMode.darken))),
          height: height,
          width: width,
        ),

        //we will be using clipRRect to get the defined place
        Padding(
          padding: EdgeInsets.only(top: height / 15, left: height / 30),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                height: height / 13,
                width: height / 13,
                //just a sake of testing
                color: Colors.grey.shade400.withOpacity(0.10),
                child: Center(
                    child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: height / 30,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Home()));
                        })),
              ),
            ),
          ),
        ),
        //lets provide  a guestire so that it takes back to the screen
        //or we can use icon button too
        //looks nice
        //now the content
        Padding(
          padding: EdgeInsets.all(height / 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                "Explore ${widget.plaecName}",
                style: TextStyle(color: Colors.white, fontSize: height / 20),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: height / 60,
              ),
              Text(
                "Explore beautiful ${widget.plaecName} islands.\nDiscover new cultures and spend\nyour time surfing and relaxing",
                style: TextStyle(color: Colors.white, fontSize: height / 40),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: height / 30,
              ),
              //row for the place and rates of price
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  //lets copy from the home its same
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        widget.location,
                        style: TextStyle(
                            color: Colors.white, fontSize: height / 40),
                      )
                    ],
                  ),
                  //same let scopy the tag price too
                  Row(
                    children: <Widget>[
                      Icon(
                        FontAwesome.tag,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "${widget.rate} / seat",
                        style: TextStyle(
                            color: Colors.white, fontSize: height / 40),
                      )
                    ],
                  ),
                ],
              ),
              //ended row for price and location
              SizedBox(
                height: height / 30,
              ),
              RaisedButton(
                padding: EdgeInsets.all(height / 45),
                onPressed: () {},
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Text(
                  "Book Trip",
                  style: TextStyle(fontSize: height / 30),
                ),
              ),

              //its done lets go for the correction....
            ],
          ),
        )
      ],
    ));

    //it seems that the background image has some color drop let's do that too
    //now loks good
    //well GANPATI BAPPA MORYA
    //HOPE BAPPA MAKE THE WORLD CORONA FREE
    //SO TILL THAT STAY FREE STAY @ HOME
    //LIKE AND SHARE THW VIDEO 
    // DO COMMENT THE VIDEO 
    //SUBSCRIBE 
    //THANKYOU
  }
}
