import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Introduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
                title: "Prevent Covid 19 and help end the pandemic",
                body:
                    "Protect yourself and other around you by knowing the facts and taking appropriate precautions"),
            // image: buildImage,
          ],
          done: Text("Skip"),
          onDone: () {},
        ),
      );
}
