import 'package:flutter/material.dart';
import 'package:nested_tab_ui/tab.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> myChats = <String>[
      'Greet',
      'Ask landmark',
      'Ask name',
      'Ask xyz',
      'Ask number',
      'Ask location'
    ];

    return DefaultTabController(
      length: myChats.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          bottom: TabBar(
            isScrollable: true,
            // indicatorPadding: EdgeInsets.all(20),
            indicatorWeight: 10,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              for (String item in myChats)
                TabBuilder(
                  item,
                  textColor: Colors.white,
                )
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          Container(),
          Container(),
          Container(),
          Container(),
          Container(),
          Container(),
        ]),
      ),
    );
  }
}
