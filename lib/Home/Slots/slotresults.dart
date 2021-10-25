// ignore_for_file: prefer_const_constructors

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SlotResults extends StatefulWidget {
  final List slots;
  const SlotResults({Key? key, required this.slots}) : super(key: key);

  @override
  _SlotResultsState createState() => _SlotResultsState();
}

class _SlotResultsState extends State<SlotResults> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Available Slots",
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w500,
            )),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF6B41B4),
                Color(0xFFD43DDD),
              ],
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Color(0xFFEEF6C7),
        padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemCount: widget.slots.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFFF9DC5E), Color(0xFFF8FFAE)],
                ),
              ),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              // height: 650,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 5),
                    child: Column(
                      children: [
                        Text(
                          "Center ID",
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          widget.slots[index]['center_id'].toString(),
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Divider(),
                        Text(
                          "Name ",
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          widget.slots[index]['name'].toString(),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Divider(),
                        Text(
                          "Address ",
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          widget.slots[index]['address'].toString(),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Divider(),
                        Text(
                          "District",
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          widget.slots[index]['district_name'].toString(),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Divider(),
                        Text(
                          "State",
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          widget.slots[index]['state_name'].toString(),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Divider(),
                        Text(
                          "Pincode",
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          widget.slots[index]['pincode'].toString(),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Divider(),
                        Text("From: "),
                        Text(
                          widget.slots[index]['from'].toString() +
                              " - " +
                              widget.slots[index]['to'],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Divider(),
                        Text(
                          "Vaccine",
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          widget.slots[index]['vaccine'].toString(),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Divider(),
                        Text(
                          "Fee Type",
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          widget.slots[index]['fee_type'].toString(),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Divider(),
                        Text(
                          "Fee",
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          "Rs." + widget.slots[index]['fee'].toString() + "/-",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
