import 'package:flutter/material.dart';

class TabBuilder extends StatelessWidget {
  final String text;
  Color backgroundColor = Colors.black;
  Color textColor = Colors.white;
  double fontSize = 12;
  Widget iconOfTab;
  TabBuilder(this.text,
      {this.fontSize, this.backgroundColor, this.textColor, this.iconOfTab});
  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        color: backgroundColor,
        child: Row(
          children: <Widget>[
            iconOfTab == null ? Container() : iconOfTab,
            SizedBox(
              width: 8,
            ),
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: fontSize,
              ),
            )
          ],
        ),
      ),
    );
  }
}
