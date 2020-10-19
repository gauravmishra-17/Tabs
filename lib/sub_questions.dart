import 'package:flutter/material.dart';
import 'package:nested_tab_ui/service.dart';

class SubQuestions extends StatefulWidget {
  String myQuestion;
  SubQuestions(this.myQuestion);
  @override
  _SubQuestionsState createState() => _SubQuestionsState();
}

class _SubQuestionsState extends State<SubQuestions> {
  DataService _dataService = DataService();
  List<dynamic> mySubQuestions;
  @override
  Widget build(BuildContext context) {
    mySubQuestions = _dataService.getSubQuestions(widget.myQuestion);
    return Container(
      child: Column(
        children: <Widget>[
          Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.black),
              child: Text(
                widget.myQuestion,
                style: TextStyle(color: Colors.white),
              )),
          SizedBox(
            height: 30,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: EdgeInsets.all(40),
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: mySubQuestions.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mySubQuestions[index],
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
