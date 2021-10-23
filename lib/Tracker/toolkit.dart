import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Toolkit extends StatelessWidget {
  const Toolkit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Covid 19 Tracker"),
          centerTitle: true,
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
        ),
        body: const WebView(
          initialUrl: "https://www.bing.com/covid/local/",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
