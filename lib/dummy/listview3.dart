import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../home_screen.dart';
import '../mapscreen.dart';

class listview3 extends StatelessWidget {
  const listview3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String todo = "images/lellapalace.jpg";
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 440,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                            image: AssetImage("images/lellapalace.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                    top: 320,
                    child: BlurryContainer(
                      padding: EdgeInsets.all(20),
                      height: 140,
                      bgColor: Color(0xff141921),
                      width: 377,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          bottomLeft: Radius.circular(25)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "The Lella Palace ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              // Text(
                              //   "With Oat Milk",
                              //   style: TextStyle(
                              //     color: Color(0xff919296),
                              //     fontSize: 12,
                              //   ),
                              // ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    "images/star.svg",
                                    height: 20,
                                    color: Color(0xffd17842),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "(6.983)",
                                    style: TextStyle(color: Color(0xff919296)),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 42,
                                    width: 42,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        // SvgPicture.asset(
                                        //   "images/coffee-beans.svg",
                                        //   color: Color(0xffd17842),
                                        //   height: 15,
                                        // ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          "AC",
                                          style: TextStyle(
                                              color: Color(0xff919296),
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color: Color(0xff101419),
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    height: 42,
                                    width: 42,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        // SvgPicture.asset(
                                        //   "images/water-drop.svg",
                                        //   color: Color(0xffd17842),
                                        //   height: 15,
                                        // ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          "Non-Ac",
                                          style: TextStyle(
                                              color: Color(0xff919296),
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color: Color(0xff101419),
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      fixedSize: const Size(150, 40),
                                      textStyle: TextStyle(fontSize: 17),
                                      primary: Colors.black,
                                      backgroundColor: Colors.grey,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(40)),
                                          side: BorderSide(color: Colors.red))),
                                  child: Text("Show on Map",
                                      textAlign: TextAlign.center),
                                  onPressed: () {
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => MapScreen(),
                                          settings: RouteSettings(
                                            arguments: todo,
                                          ),
                                        ),
                                        (Route<dynamic> route) => false);
                                    //signin();
                                  },
                                ),
                                // height: 37,
                                // width: 120,
                                // child: Center(
                                //     child: Text(
                                //   "Hotel",
                                //   style: TextStyle(
                                //       color: Color(0xff919296),
                                //       fontSize: 12,
                                //       fontWeight: FontWeight.bold),
                                // )),
                                // decoration: BoxDecoration(
                                //     color: Color(0xff101419),
                                //     borderRadius: BorderRadius.circular(8)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Description",
                      style: TextStyle(
                          color: Color(0xff919296),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 150,
                      child: SingleChildScrollView(
                        //scrollDirection: Axis.vertical,

                        child: Text(
                          "Spread across 4.8 acres of peaceful land, the luxurious Leela Palace Chennai offers an outdoor pool and a fitness centre. Its grand and well-designed rooms enjoy 24-hour room services. Free parking is available. \n Overlooking the sea, the spacious air-conditioned guestrooms all come with a 40-inch flat-screen TV, Blu-ray player, well-stocked minibar and a sofa. \n  Leela Palace Chennai is 2 km from St. Thomas Basilica and Marina Beach. It is 4 km from Parthasarathy Temple. Anna International Airport and Kamaraj Domestic Airport are 16 km away.",
                          style:
                              TextStyle(color: Color(0xff919296), fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "people!",
                      style: TextStyle(
                          color: Color(0xff919296),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 37,
                          width: 110,
                          child: Center(
                              child: Text(
                            "Adult",
                            style: TextStyle(
                              color: Color(0xff919296),
                              fontSize: 18,
                            ),
                          )),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Color(0xffd17842))),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Container(
                          height: 37,
                          width: 110,
                          child: Center(
                              child: Text(
                            "youngster",
                            style: TextStyle(
                              color: Color(0xff919296),
                              fontSize: 18,
                            ),
                          )),
                          decoration: BoxDecoration(
                              color: Color(0xff101419),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Container(
                          height: 37,
                          width: 110,
                          child: Center(
                              child: Text(
                            "child",
                            style: TextStyle(
                              color: Color(0xff919296),
                              fontSize: 18,
                            ),
                          )),
                          decoration: BoxDecoration(
                              color: Color(0xff101419),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 27,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Price",
                              style: TextStyle(
                                  color: Color(0xff919296),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  r'₹',
                                  style: TextStyle(
                                      color: Color(0xffd17842), fontSize: 21),
                                ),
                                Text(
                                  "2500",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 21),
                                )
                              ],
                            )
                          ],
                        ),
                        // ignore: deprecated_member_use
                        ButtonTheme(
                          minWidth: 200,
                          height: 50,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()),
                                  (Route<dynamic> route) => false);
                              Fluttertoast.showToast(
                                  msg: "your hotel is booked");
                            },
                            color: Color(0xffd17842),
                            child: Text(
                              "book Now",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
