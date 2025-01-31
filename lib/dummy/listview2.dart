import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../home_screen.dart';
import '../mapscreen.dart';

class listview2 extends StatelessWidget {
  const listview2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String todo = "images/parkhyatt.jpg";
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
                            image: AssetImage("images/parkhyatt.jpg"),
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
                                "Park Hyatt",
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
                          "The 5-star Park Hyatt Chennai features a spa with rooftop infinity pool and fitness centre offering panoramic city views and views of the Guindy Forest Reserve. The hotel has its own restaurant and luxurious rooms. \n Located next to the Governor's Residence, Park Hyatt Chennai is conveniently situated near Phoenix Marketcity Mall at 3.5 km, Chennai Trade Centre 7.2 km, IIT Madras 3.2 km, Anna University 3.9 km, OMR IT Corridor 3.6 km, DLF IT Park 7 km, US Consulate 8.3 km while Chennai International Airport is 9 km from the hotel. Leading hospitals like MIOT, Apollo, Rainbow Children’s hospital and Global Hospitals are within 7 km range of the hotel.\n Spacious and indulgent guestrooms offer floor-to-ceiling windows, boasting views of the city greenery or the Guindy Forest Reserve. The hotel offers some of the city’s largest room sizes, fitted with marble flooring, exquisite décor, thoughtful amenities and a Nespresso coffee machine.",
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
