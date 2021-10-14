// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myapp/screens/slotsearch.dart';

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
                child: Column(children: [
                  Container(
                    // color: Colors.red,
                    height: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/homepage.jpg"),
                        // fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height - 250,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        color: Color(0xFFBBDEFB),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(55),
                            topRight: Radius.circular(55))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        Text(
                          "Search for your nearest \nvaccination centers",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Get a preview list of the nearest centers and check availability of vaccination slots",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 45,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            print("Button Pressed!");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SlotSearch()));
                          },
                          child: Container(
                              child: Text("Get Started",
                                  style: TextStyle(fontSize: 17))),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(160, 55),
                            primary: Colors.blueAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
