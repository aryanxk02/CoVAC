// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

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
        title: Text("Available Slots"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.amberAccent,
        padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            itemCount: widget.slots.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                height: 360,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 5),
                        child: Column(
                          children: [
                            Text(
                              "Center ID: " +
                                  widget.slots[index]['center_id'].toString(),
                              style: TextStyle(fontSize: 16),
                              // textAlign: TextAlign.center,
                            ),
                            Text(
                              "Name: " + widget.slots[index]['name'].toString(),
                              style: TextStyle(fontSize: 16),
                              // textAlign: TextAlign.center,
                            ),
                            Text(
                              "Address: " +
                                  widget.slots[index]['address'].toString(),
                              style: TextStyle(fontSize: 16),
                              // textAlign: TextAlign.center,
                            ),
                            Text(
                              "District: " +
                                  widget.slots[index]['district_name']
                                      .toString(),
                              style: TextStyle(fontSize: 16),
                              // textAlign: TextAlign.center,
                            ),
                            Text(
                              "State: " +
                                  widget.slots[index]['state_name'].toString(),
                              style: TextStyle(fontSize: 16),
                              // textAlign: TextAlign.center,
                            ),
                            Text(
                              "Pincode: " +
                                  widget.slots[index]['pincode'].toString(),
                              style: TextStyle(fontSize: 16),
                              // textAlign: TextAlign.center,
                            ),
                            Text(
                              "From: " +
                                  widget.slots[index]['from'].toString() +
                                  " to: " +
                                  widget.slots[index]['to'],
                              style: TextStyle(fontSize: 16),
                              // textAlign: TextAlign.center,
                            ),
                            Divider(),
                            Row(children: [
                              Text(
                                "Vaccine: ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                                // textAlign: TextAlign.center,
                              ),
                              Text(
                                widget.slots[index]['vaccine'].toString(),
                                style: TextStyle(fontSize: 16),
                                // textAlign: TextAlign.center,
                              ),
                            ]),
                            Text(
                              "Fee: Rs " +
                                  widget.slots[index]['fee'].toString() +
                                  "/-",
                              style: TextStyle(fontSize: 16),
                              // textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      )
                    ]),
              );
            }),
      ),
    );
  }
}
