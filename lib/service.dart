import 'dart:convert';

import 'package:flutter/services.dart';

class DataService {
  static Map<String, List<dynamic>> newMap;
  Future<List<String>> getRequest() async {
    print("service started");
    final response = await rootBundle.loadString('load_json/data.json');
    final responseJson = jsonDecode(response);
    newMap = Map<String, List<dynamic>>.from(responseJson);
    List<String> myQuestions = new List<String>();
    newMap.keys.forEach((k) => myQuestions.add(k));
    print(myQuestions);
    print("service ends");
    return myQuestions;
  }

  List<dynamic> getSubQuestions(String header) {
    return newMap[header];
  }
}
