import 'package:flutter/material.dart';
import 'package:nested_tab_ui/question.dart';

import 'all_questions.dart';
import 'service.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  DataService _dataService = DataService();
  List<String> myQuestions;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future<List<String>> fetch() async {
      print("future starts");
      return await _dataService.getRequest();
    }

    print("fetch starts");
    Future.value(fetch()).then((value) {
      setState(() {
        myQuestions = value;
      });
    });
    print(myQuestions);
    print("fetch ends");
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        height: 50,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: myQuestions.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: QuestionBuilder(
                  myQuestions[index],
                  textColor: Colors.black,
                ),
              );
            }),
      ),
      Expanded(
        child: AllQuestions(
          myQuestions: myQuestions,
        ),
      ),
    ]);
  }
}
