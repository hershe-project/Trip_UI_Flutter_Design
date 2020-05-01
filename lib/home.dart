import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:trip/main.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          color: Colors.black,
          height: height,
          width: width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  height: height / 3.3,
                  width: width,
                  color: Color.fromRGBO(22, 22, 22, 1),
                  child: Column(
                    children: <Widget>[
                      //for icons at the top
                      Container(
                        padding: EdgeInsets.only(
                            left: height / 50,
                            right: height / 50,
                            top: height / 18),
                        height: height / 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(
                              Icons.menu,
                              color: silver,
                            ),
                            Icon(
                              Icons.search,
                              color: silver,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height / 40,
                      ),
                      //for globe icon
                      Container(
                        height: height / 15,
                        width: height / 15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Color.fromRGBO(29, 29, 29, 1),
                        ),
                        child: Center(
                          child: Container(
                            height: height / 30,
                            width: height / 30,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/globe.png"))),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height / 40,
                      ),
                      Text(
                        "Explore\nThe World",
                        style: TextStyle(
                            color: Colors.white, fontSize: height / 25),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                //ended upper container
                //you can use silverapp bar too but for no wi amusing single scrollview
                Padding(
                  padding: EdgeInsets.all(height / 40),
                  child: Text(
                    "Popular adventures",
                    style: TextStyle(color: silver, fontSize: height / 40),
                  ),
                ),
                //now here the looping wiget
                tripCard("assets/images/hawai1.jpeg", "Hawaii",
                    "Honshula Hawaii", "399", "4.7"),
                tripCard("assets/images/miami.jpeg", "Miami", "Miami Island",
                    "299", "4.9"),
                tripCard("assets/images/mumbai.jpeg", "Mumbai", "Mah. Mumbai",
                    "259", "4.9"),
              ],
            ),
          )),
    );
  }

  Widget tripCard(String image, String place, String location, String price,
      String rating) {
    double height = MediaQuery.of(context).size.height;
    double boxHeight = height / 3.7;
    double width = MediaQuery.of(context).size.width;
    return Padding(
        padding:
            EdgeInsets.fromLTRB(height / 40, 0.0, height / 40, height / 40),
        child: Container(
          height: boxHeight,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Color.fromRGBO(25, 25, 25, 1),
          ),
          child: Row(
            children: <Widget>[
              //image content
              Container(
                padding: EdgeInsets.fromLTRB(
                    boxHeight / 12, boxHeight / 12, boxHeight / 12, 0.0),
                width: width / 2.25,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      "-- OUR PICK",
                      style: TextStyle(
                          color: Color.fromRGBO(56, 56, 56, 1),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: boxHeight / 20,
                    ),
                    Text(
                      "Explore\n$place",
                      style: TextStyle(
                          color: Colors.white, fontSize: boxHeight / 8),
                    ),
                    SizedBox(
                      height: boxHeight / 20,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: silver,
                          size: boxHeight / 13,
                        ),
                        SizedBox(
                          width: 3.0,
                        ),
                        Text(
                          location,
                          style: TextStyle(
                              color: silver, fontSize: boxHeight / 15),
                        )
                      ],
                    ),
                    SizedBox(
                      height: boxHeight / 20,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          FontAwesome.tag,
                          color: silver,
                          size: boxHeight / 13,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "$price / seat",
                          style: TextStyle(
                              color: silver, fontSize: boxHeight / 15),
                        )
                      ],
                    ),
                    SizedBox(
                      height: boxHeight / 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              rating,
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Icon(
                              FontAwesome.star,
                              color: Colors.orange,
                              size: boxHeight / 20,
                            )
                          ],
                        ),
                        Icon(
                          FontAwesome.long_arrow_right,
                          color: silver,
                        )
                      ],
                    )
                  ],
                ),
              ),
              //image
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0)),
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover)),
                width: width / 2.25,
              )
            ],
          ),
        ));

    //so almost we are done with the first page ...
    //ow lets head for the second page
  }
}
