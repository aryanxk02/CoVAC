import 'package:flutter/material.dart';

class AnswerOne extends StatelessWidget {
  const AnswerOne({
    Key? key,
    required this.answer,
    required this.question,
  }) : super(key: key);
  final String question;
  final String answer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Answers"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color(0xFF6B41B4),
                Color(0xFFD43DDD),
              ],
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Container(
            margin:
                const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              // color: Color(0xFFFFF9AE),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFFDBE6F6), Color(0xFFF8FFAE)],
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Text(
                  question,
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(),
                Text(
                  '$answer',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.justify,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
