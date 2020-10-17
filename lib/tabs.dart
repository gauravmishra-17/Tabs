import 'package:flutter/material.dart';
import 'package:nested_tab_ui/tab.dart';

import 'chat.dart';
import 'make_offer.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  List<String> myTabs = <String>['Chat', 'Make Offer'];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            tabs: <Widget>[
              TabBuilder(
                myTabs[0],
                fontSize: 18,
                backgroundColor: Colors.white,
                iconOfTab: Icon(
                  Icons.chat,
                  color: Colors.black,
                ),
                textColor: Colors.black,
              ),
              TabBuilder(
                myTabs[1],
                fontSize: 18,
                backgroundColor: Colors.white,
                iconOfTab: Icon(
                  Icons.local_offer,
                  color: Colors.black,
                ),
                textColor: Colors.black,
              ),
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[Chat(), MakeOffer()]),
      ),
    );
  }
}
