import 'package:flutter/material.dart';
import 'package:nested_tab_ui/sub_questions.dart';

class AllQuestions extends StatelessWidget {
  List<String> myQuestions;
  AllQuestions({this.myQuestions});
  ScrollController scrollController = ScrollController();
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        controller: scrollController,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          padding: EdgeInsets.all(20),
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: myQuestions.length,
              itemBuilder: (BuildContext context, index) {
                return SubQuestions(myQuestions[index]);
              }),
        ));
  }
}
