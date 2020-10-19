import 'package:flutter/material.dart';
import 'package:nested_tab_ui/all_questions.dart';
import 'package:nested_tab_ui/chat.dart';

class QuestionBuilder extends StatelessWidget {
  final String text;
  Color backgroundColor = Colors.black;
  Color textColor = Colors.white;
  double fontSize = 12;
  Widget iconOfTab;
  AllQuestions _allQuestions = AllQuestions();
  QuestionBuilder(this.text,
      {this.fontSize, this.backgroundColor, this.textColor, this.iconOfTab});
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
      onPressed: () {},
    );
  }
}
