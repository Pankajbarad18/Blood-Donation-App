// ignore_for_file: prefer_const_constructors, dead_code

import 'dart:ffi';

import 'package:app/Pages/Drawer.dart';
import 'package:app/Pages/MyRoutes.dart';
import 'package:app/Pages/ReadMore.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final images = [
      "assets/Images/BloodSlide1.png",
      "assets/Images/BloodSlide2.jpg",
      "assets/Images/BloodSlide3.jpg"
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BloodDonor",
        ),
        backgroundColor: Colors.red,
        titleTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.comment),
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
            tooltip: "Contact Us",
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            CarouselSlider.builder(
                itemCount: images.length,
                itemBuilder: (context, index, realindex) {
                  final imageurl = images[index];
                  return buildImage(imageurl, index);
                },
                options: CarouselOptions(
                    height: 200,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    autoPlayInterval: Duration(seconds: 2))),
            const SizedBox(
              height: 12,
            ),
            InkWell(
              child: Container(
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables

                  children: [
                    Container(
                      padding: EdgeInsets.all(10.0),
                      //margin: EdgeInsets.all(100.0),
                      child: ListTile(
                        tileColor: Colors.red,
                        leading:
                            Icon(Icons.bloodtype_rounded, color: Colors.white),
                        title: Text("Need Blood"),
                        textColor: Colors.white,
                        onTap: () {
                          print("object");
                        },
                        splashColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.red, width: 4),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      // margin: EdgeInsets.all(10.0),
                      child: ListTile(
                        tileColor: Colors.green,
                        leading:
                            Icon(Icons.person_add_alt, color: Colors.white),
                        title: Text("Login as Donor"),
                        textColor: Colors.white,
                        onTap: () {
                          print("object");
                        },
                        splashColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.green, width: 4),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      // margin: EdgeInsets.all(10.0),
                      child: ListTile(
                        tileColor: Colors.lightBlueAccent,
                        leading:
                            Icon(Icons.maps_home_work, color: Colors.white),
                        title: Text("Camp For Blood Donations"),
                        textColor: Colors.white,
                        onTap: () {
                          print("object");
                        },
                        splashColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.lightBlueAccent, width: 4),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      // margin: EdgeInsets.all(10.0),
                      child: ListTile(
                        tileColor: Colors.blueGrey,
                        leading: Icon(Icons.info_rounded, color: Colors.white),
                        title: Text("Learn More About Blood Donation "),
                        textColor: Colors.white,
                        onTap: () {
                          Navigator.pushNamed(context, MyRoutes.readmore);
                        },
                        splashColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.blueGrey, width: 4),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }

  Widget buildImage(String imageurl, int index) {
    return Container(
      margin: EdgeInsets.all(10.0),
      // ignore: sort_child_properties_last
      child: Image.asset(
        imageurl,
        fit: BoxFit.cover,
      ),
      color: Color.fromARGB(255, 132, 117, 117),
    );
  }
}
