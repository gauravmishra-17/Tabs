import 'package:flutter/material.dart';

import 'price.dart';

class ButtonBuilder extends StatelessWidget {
  final String text;
  Color backgroundColor = Colors.black;
  Color textColor = Colors.white;
  double fontSize = 12;
  Widget iconOfTab;
  ButtonBuilder(this.text,
      {this.fontSize, this.backgroundColor, this.textColor, this.iconOfTab});
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
      onPressed: () {
        Price(text: text);
      },
    );
  }
}
