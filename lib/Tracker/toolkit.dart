import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Toolkit extends StatefulWidget {
  const Toolkit({Key? key}) : super(key: key);

  @override
  State<Toolkit> createState() => _ToolkitState();
}

class _ToolkitState extends State<Toolkit> {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    _goBack() async {
      if (await _controller.canGoBack()) {
        await _controller.goBack();
      }
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Covid 19 Tracker",
            style: GoogleFonts.montserrat(fontWeight: FontWeight.w500),
          ),
          leading: IconButton(onPressed: _goBack, icon: Icon(Icons.arrow_back)),
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
        body: WebView(
          initialUrl: "https://www.bing.com/covid/local/india",
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webviewcontroller) {
            _controller = webviewcontroller;
          },
        ),
      ),
    );
  }
}
