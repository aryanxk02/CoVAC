// ignore_for_file: prefer_const_constructors, unused_field, avoid_unnecessary_containers, avoid_print, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Home/Slots/slotsearch.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/homepage.jpg"),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height - 250,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFFDBE6F6),
                              Color(0xFFF8FFAE),
                            ],
                          ),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(55),
                              topRight: Radius.circular(55))),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 80,
                          ),
                          Text(
                            "Search for your nearest \nvaccination centers",
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontSize: 26,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                            padding: EdgeInsets.all(20),
                            child: Text(
                              "Get a preview list of the nearest centers and check availability of vaccination slots",
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              print("Button Pressed!");
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SlotSearch(),
                                ),
                              );
                            },
                            child: Container(
                              child: Text(
                                "Get Started",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(160, 55),
                              primary: Color(0xFF9E40C8),
                            ),
                          ),
                        ],
                      ),
                    ),
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
