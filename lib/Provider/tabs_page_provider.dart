import 'package:flutter/material.dart';
import 'package:myapp/FaQ/qna.dart';
import 'package:myapp/Home/homepage.dart';
import 'package:myapp/Tracker/toolkit.dart';
import '../models/tab_navigation_item_definition.dart';

class TabNavigationItemsData {
  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          page: HomePage(),
          icon: Icon(Icons.home),
          title: "Home",
        ),
        TabNavigationItem(
          page: Toolkit(),
          icon: Icon(Icons.track_changes),
          title: 'Track',
        ),
        TabNavigationItem(
          page: QnA(),
          icon: Icon(Icons.question_answer_sharp),
          title: 'FaQ',
        ),
      ];
}
